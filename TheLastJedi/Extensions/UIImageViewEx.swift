//
//  UIImageEx.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    private static var taskKey = 0
    private static var urlKey = 0
    
    private var currentTask: URLSessionTask? {
        get { return objc_getAssociatedObject(self, &UIImageView.taskKey) as? URLSessionTask }
        set { objc_setAssociatedObject(self, &UIImageView.taskKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
    
    private var currentURL: URL? {
        get { return objc_getAssociatedObject(self, &UIImageView.urlKey) as? URL }
        set { objc_setAssociatedObject(self, &UIImageView.urlKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
    
    func loadImageAsync(with urlString: String?) {
        // cancel prior task, if any.
        weak var oldTask = currentTask
        currentTask = nil
        oldTask?.cancel()
        
        // reset imageview's image.
        self.image = nil
        
        // allow supplying of 'nil' to remove old image and then return immediately.
        guard let urlString = urlString else { return }
        
        // check cache.
        if let cachedImage = SWImage.shared.image(forKey: urlString) {
            self.image = cachedImage
            return
        }
        
        // download.
        let url = URL(string: urlString)!
        currentURL = url
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            self?.currentTask = nil
            
            //error handling.
            if let error = error {
                if (error as NSError).domain == NSURLErrorDomain && (error as NSError).code == NSURLErrorCancelled {
                    return
                }
                return
            }
            
            guard let data = data, let downloadedImage = UIImage(data: data) else {
                return
            }
            
            SWImage.shared.save(image: downloadedImage, forKey: urlString)
            
            if url == self?.currentURL {
                DispatchQueue.main.async {
                    self?.image = downloadedImage
                }
            }
        }
        
        // save and start new task.
        currentTask = task
        task.resume()
    }
    
    func roundEdges(cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
    }
}
