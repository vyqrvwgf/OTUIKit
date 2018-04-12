//
//  OTImageExtension.swift
//  OTExtension
//
//  Created by lazy on 2018/4/12.
//

import UIKit

public extension UIImage {
    public class func image(named: String, cache: Bool = false) -> UIImage? {
        var locationURLString = Bundle(for: OTExtensionLocation.self).resourcePath ?? ""
        locationURLString.append("/OTExtension.bundle")
        let currentBundle = Bundle(path: locationURLString)
        if cache {
            var path = currentBundle?.resourcePath ?? ""
            path.append("/\(named).png")
            return UIImage(contentsOfFile: path)
        } else {
            return UIImage(named: named, in: currentBundle, compatibleWith: nil)
        }
    }
}
