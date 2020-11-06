//
//  ViewController.swift
//  ShadowExample
//
//  Created by Sabari on 06/11/20.
//

import UIKit
import SNShadowSDK

class ViewController: UIViewController {
    @IBOutlet weak var viewOne: SNShadowView!
    @IBOutlet weak var viewTwo: SNShadowView!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func innerShadow(_ sender:UIButton){
        viewOne.setInnerShadow()
        viewTwo.setInnerShadow()
    }
    
    @IBAction func outterShadow(_ sender:UIButton){
        viewOne.setOuterShadow()
        viewTwo.setOuterShadow()
    }
}


