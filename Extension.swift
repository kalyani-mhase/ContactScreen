//
//  extension.swift
//  ContactScreen
//
//  Created by Admin on 19/01/22.
//

import Foundation
import UIKit
extension UIView {

    

    @IBInspectable var cornerRadius: CGFloat {

        

        get {

            return layer.cornerRadius

        }

        set {

            layer.cornerRadius = newValue

            layer.masksToBounds = newValue > 0

            

        }

        

    }

    

    @IBInspectable var rounded: Bool {

        get {

            return true

        }

        set {

            if rounded {

                self.roundView()

            }

        }

    }

    

    func roundView() {

        self.layer.cornerRadius = self.frame.size.width/2

        self.clipsToBounds = true

    }

    

    @IBInspectable var borderWidth: CGFloat {

        

        get {

            return layer.borderWidth

        }

        set {

            layer.borderWidth = newValue

        }

    }

    

    @IBInspectable var borderColor: UIColor {

        

        get {

            return UIColor(cgColor: layer.borderColor!)

        }

        set {

            layer.borderColor = newValue.cgColor

        }

    }

    

    @IBInspectable var isTopRounded: Bool {

        get {

            return true

        }

        set {

            if isTopRounded {

                DispatchQueue.main.async {

                    self.roundCorners([.topLeft, .topRight], radius: 3)

                }

            }

        }

    }

    

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {

        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        let mask = CAShapeLayer()

        mask.path = path.cgPath

        self.layer.mask = mask
    }
}
