//
//  UIImage+SDImageManager.swift
//  talkba
//
//  Created by douyu on 2021/8/19.
//

import Foundation
import SDWebImage

extension UIImage{
    //下载单图
    static func sd_downLoadImage(url: String,width: Int = RemoteImage.defaultWidth,height: Int = RemoteImage.defaultWidth,completed: @escaping(_ urlImage: UIImage) -> Void){
        let downLoadUrl = URL.encodedOriginImageURL(string: url, width: width,height:height)
        // 获取本地缓存中的图片
        guard let cacheImage = SDImageCache.shared.imageFromDiskCache(forKey: downLoadUrl?.absoluteString) else{
            SDWebImageManager.shared.loadImage(with: downLoadUrl, options: SDWebImageOptions.lowPriority, progress: nil) { (downLoadImage, imageData, error, cacheType, finished, imageUrl) in
                if finished {
                    SDImageCache.shared.storeImageData(toDisk: imageData, forKey: downLoadUrl?.absoluteString)
                    logDebug("图片下载成功")
                    if let downLoadImage = downLoadImage {
                        completed(downLoadImage)
                    }
                }
                if error != nil{
                    logDebug("图片下载失败")
                }
            }
            return
        }
        completed(cacheImage)
    }
    
    //下载多图,返回的是图片路径和图片
    /**
     group和SDWebImageManager这种组合方式，可能会造成闪退  参考 https://blog.csdn.net/weixin_36139431/article/details/102990216，
     不是必现，先保持目前状况
     在下面新写了sd_downLoadImagesOther方法，用的BlockOperation，还没测试。
     
     最新：新增了在主线程去操作数组，不会闪退，再观察
     */
    static func sd_downLoadImages(urls: [String],completed: @escaping(_ images: [String : UIImage?]) -> Void){
        let group = DispatchGroup.init()
        var imageDatas: [String : UIImage?] = [:]
        for url in urls {
            group.enter()
            DispatchQueue.global().async(group: group, execute: DispatchWorkItem.init(block: {
                let downLoadUrl = url
                // 获取本地缓存中的图片
                guard let cacheImage = SDImageCache.shared.imageFromDiskCache(forKey: downLoadUrl) else{
                    SDWebImageManager.shared.loadImage(with: URL(string: downLoadUrl), options: SDWebImageOptions.lowPriority, progress: nil) { (downLoadImage, imageData, error, cacheType, finished, imageUrl) in
                        if finished {
                            SDImageCache.shared.storeImageData(toDisk: imageData, forKey: downLoadUrl)
                            logDebug("图片下载成功")
                            if let downLoadImage = downLoadImage {
                                imageDatas[imageUrl?.absoluteString ?? ""] = downLoadImage
                            }
                        }
                        group.leave()
                    }
                    return
                }
                DispatchQueue.main.async{
                    imageDatas[downLoadUrl] = cacheImage
                    group.leave()
                }
            }))
        }
        group.notify(queue: DispatchQueue.main) {
            completed(imageDatas)
        }
        
    }
    
    //下载多图,返回的是图片路径和图片
    static func sd_downLoadImagesOther(urls: [String],completed: @escaping(_ images: [String : UIImage?]) -> Void){
        let operation = BlockOperation()
        var imageDatas: [String : UIImage?] = [:]
        for url in urls {
            operation.addExecutionBlock {
                logInfo("任务\(url)运行在线程\(Thread.current)")
                let downLoadUrl = url
                // 获取本地缓存中的图片
                guard let cacheImage = SDImageCache.shared.imageFromDiskCache(forKey: downLoadUrl) else{
                    SDWebImageManager.shared.loadImage(with: URL(string: downLoadUrl), options: SDWebImageOptions.lowPriority, progress: nil) { (downLoadImage, imageData, error, cacheType, finished, imageUrl) in
                        if finished {
                            SDImageCache.shared.storeImageData(toDisk: imageData, forKey: downLoadUrl)
                            logDebug("图片下载成功")
                            if let downLoadImage = downLoadImage {
                                imageDatas[imageUrl?.absoluteString ?? ""] = downLoadImage
                            }
                        }
                        
                    }
                    return
                }
                imageDatas[downLoadUrl] = cacheImage
            }
        }
        
        operation.completionBlock = {
            completed(imageDatas)
        }
        operation.start()
    }
}
