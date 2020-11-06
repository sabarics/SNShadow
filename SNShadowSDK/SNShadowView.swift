//
//  SNShadowView.swift
//  SNShadowSDK
//
//  Created by Sabari on 06/11/20.
//

import Foundation
import UIKit

@IBDesignable public class SNShadowView : UIView
{
    
    /// Create container View
    lazy var containView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1)
        return view
    }()
    
    /// Background Color for superView
    @IBInspectable public var bgColor: UIColor? = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1)
    /// Corner Radius for superView
    @IBInspectable public var cornerRadius: CGFloat = 10
    var shadowOpacity: Float = 1
    var shadowRadius: CGFloat = 1
    /*
     Apply Shadow to Left and Bottomm of the View.
     */
    @IBInspectable public var shadowWidth1: Int = 3
    @IBInspectable public var shadowHeight1: Int = 3
    @IBInspectable public var shadowColor1: UIColor? = UIColor.lightGray
    /*
     Apply Shadow to Right and Top of the View.
     */
    @IBInspectable public var shadowWidth2: Int = -3
    @IBInspectable public var shadowHeight2: Int = -3
    @IBInspectable public var shadowColor2: UIColor? = UIColor.white
    
    @IBInspectable public var innerShadow:Bool = false{
        didSet{
            if innerShadow{
                setInnerShadow()
            }
        }
    }
    
    public override func layoutSubviews() {
        
        
        self.addSubview(containView)
        setupAutoLayout()
        self.sendSubviewToBack(self.containView)
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowColor = shadowColor1?.cgColor
        layer.shadowOffset = CGSize(width: shadowWidth1, height: shadowHeight1);
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.shadowPath = shadowPath.cgPath
        
        containView.layer.cornerRadius = cornerRadius
        let shadowPath1 = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        containView.layer.masksToBounds = false
        containView.layer.shadowColor = shadowColor2?.cgColor
        containView.layer.shadowOffset = CGSize(width: shadowWidth2, height: shadowHeight2);
        containView.layer.shadowOpacity = shadowOpacity
        containView.layer.shadowRadius = shadowRadius
        containView.layer.shadowPath = shadowPath1.cgPath
        containView.backgroundColor = bgColor
        self.backgroundColor = bgColor
        //self.layoutIfNeeded()
       
    }
    
    /// Add Constraints
    func setupAutoLayout() {
        containView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        containView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        containView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
     }
    
    
    /// Set Inner Shadow to View
   public func setInnerShadow(){
        shadowColor1 = UIColor.white
        shadowColor2 = UIColor.lightGray
        self.layoutSubviews()
    }
    
    /// Set Outter Shadow to View
    public func setOuterShadow(){
        shadowColor2 = UIColor.white
        shadowColor1 = UIColor.lightGray
        self.layoutSubviews()
    }
}
