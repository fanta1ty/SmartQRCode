//
//  CIImage+Ext.swift
//  SmartQRCode
//
//  Created by Thinh Nguyen on 3/19/19.
//  Copyright © 2019 Thinh Nguyen. All rights reserved.
//

import Foundation
import UIKit


typealias Scale = (dx: CGFloat, dy: CGFloat)

extension CIImage {
    func nonInterpolatedImage(withScale scale: Scale = Scale(dx: 1, dy: 1)) -> UIImage? {
        guard let cgImage = CIContext(options: nil).createCGImage(self, from: extent) else {
            return nil
        }
        
        let size = CGSize(width: extent.size.width * scale.dx,
                          height: extent.size.height * scale.dy)
        
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        context.interpolationQuality = .none
        context.translateBy(x: 0, y: size.height)
        context.scaleBy(x: 1.0, y: -1.0)
        context.draw(cgImage, in: context.boundingBoxOfClipPath)
        
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return result
    }
}
