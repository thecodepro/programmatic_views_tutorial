//
//  ViewController.swift
//  programmatic_view_tutorial
//
//  Created by Zephaniah Cohen on 1/14/17.
//  Copyright © 2017 CodePro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        containerView.backgroundColor = UIColor.blue
        
        containerView.center = view.center
        
        
        containerView.addSubview(buildTextField(definedFrame: CGRect(x: 5, y: 75, width: containerView.frame.width-10, height: 25), placeHolderText: "Enter first name"))
        
        containerView.addSubview(buildTextField(definedFrame: CGRect(x: 5, y: 125, width: containerView.frame.width-10, height: 25), placeHolderText: "Enter last name"))
        
    
        let button = buildButton(definedFrame: CGRect(x:50, y:165, width:50, height:25), title: "Login")
        button.backgroundColor = UIColor.darkGray
        button.addTarget(self, action: #selector(ViewController.buttonClickHandler), for: UIControlEvents.touchUpInside)
        containerView.addSubview(button)
    
        view.addSubview(containerView)
        
        //Uncomment to see the example covering the difference between frame and bounds.
    
//        let testView = UIView(frame: CGRect(x: 10, y: 25, width: 50, height: 50))
//        testView.backgroundColor = UIColor.red
//        
//        print(testView.bounds)
//        print(testView.frame)
//
//        containerView.addSubview(testView)
//        
        
        
    }
    
    func buildButton(definedFrame : CGRect, title : String) -> UIButton {
        
        let button = UIButton(type: UIButtonType.roundedRect)
        button.frame = definedFrame
        button.setTitle(title, for: UIControlState.normal)
        
        return button
    }
    
    func buttonClickHandler() {
        print("Button was clicked")
    }
    
    func buildTextField(definedFrame : CGRect, placeHolderText : String) -> UITextField {
        
        let textField = UITextField(frame: definedFrame)
        textField.placeholder = placeHolderText
        textField.borderStyle = UITextBorderStyle.roundedRect
    
        return textField
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

