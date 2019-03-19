//
//  UIImageView+Ext.swift
//  SmartQRCode
//
//  Created by Thinh Nguyen on 3/19/19.
//  Copyright © 2019 Thinh Nguyen. All rights reserved.
//

import Foundation
import UIKit

public extension UIImageView {
    public convenience init(smartQRCode: SmartQRCode) {
        self.init(image: smartQRCode.image)
    }
}
