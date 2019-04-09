//
//  ViewController.swift
//  Wake Up Happy v2
//
//  Created by Sherman Shi on 4/8/19.
//  Copyright © 2019 Sherman Shi. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "background"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleTextView: UITextView = {
        let textView = UITextView()
        
        let text = "Wake Up\nHappy"
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.white
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.init(name: "launica", size: 75)!,
            .foregroundColor: UIColor.init(red: 91.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0),
            .shadow: shadow
        ]
        let attributedText = NSAttributedString(string: text, attributes: attributes)
        textView.attributedText         = attributedText
        textView.textAlignment          = .center
        textView.isEditable             = false
        textView.isScrollEnabled        = false
        textView.isSelectable           = false
        textView.backgroundColor        = .clear
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    //    let descriptionTextViewOne: UITextView = {
    //        let textView = UITextView()
    //
    //        let text = "Tap anywhere to start\nyour day right!"
    //        let shadow = NSShadow()
    //        shadow.shadowColor = UIColor.white
    //        shadow.shadowOffset = CGSize(width: 1, height: 1)
    //        let attributes: [NSAttributedString.Key: Any] = [
    //            .font: UIFont.init(name: "Marker felt", size: 25)!,
    //            .foregroundColor: UIColor.init(red: 91.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0),
    //            .shadow: shadow
    //        ]
    //        let attributedText = NSAttributedString(string: text, attributes: attributes)
    //        textView.attributedText = attributedText
    //        textView.textAlignment = .center
    //        textView.isEditable = false
    //        textView.isScrollEnabled = false
    //        textView.isSelectable = false
    //        textView.translatesAutoresizingMaskIntoConstraints = false
    //        textView.backgroundColor = .clear
    //        return textView
    //    }()
    
    //    let descriptionTextViewTwo: UITextView = {
    //        let textView = UITextView()
    //
    //        let text = "A happy video a day\nmakes the heartache\ngo away."
    //        let shadow = NSShadow()
    //        shadow.shadowColor = UIColor.white
    //        shadow.shadowOffset = CGSize(width: 1, height: 1)
    //        let attributes: [NSAttributedString.Key: Any] = [
    //            .font: UIFont.init(name: "Marker felt", size: 25)!,
    //            .foregroundColor: UIColor.init(red: 91.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0),
    //            .shadow: shadow
    //        ]
    //        let attributedText = NSAttributedString(string: text, attributes: attributes)
    //        textView.attributedText = attributedText
    //        textView.textAlignment = .center
    //        textView.isEditable = false
    //        textView.isScrollEnabled = false
    //        textView.isSelectable = false
    //        textView.translatesAutoresizingMaskIntoConstraints = false
    //        textView.backgroundColor = .clear
    //        return textView
    //    }()
    
    lazy var descriptionTextViewOne: UITextView = descriptionTextView(with: "Tap anywhere to start\nyour day right!")
    
    lazy var descriptionTextViewTwo: UITextView = descriptionTextView(with: "A happy video a day\nmakes the heartache\ngo away.")
    
    private let aboutButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("About", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let infoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Info", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        //        view.addSubview(titleTextView)
        
        layoutSetup()
        
        bottomControlsSetup()
    }
    
    private func descriptionTextView(with text: String) -> UITextView {
        let textView = UITextView()
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.white
        shadow.shadowOffset = CGSize(width: 1, height: 1)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.init(name: "Marker felt", size: 25)!,
            .foregroundColor: UIColor.init(red: 91.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0),
            .shadow: shadow
        ]
        textView.attributedText         = NSAttributedString(string: text, attributes: attributes)
        textView.textAlignment          = .center
        textView.isEditable             = false
        textView.isScrollEnabled        = false
        textView.isSelectable           = false
        textView.backgroundColor        = .clear
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }
    
    private func bottomControlsSetup() {
        
        let bottomButtonsStackView = UIStackView(arrangedSubviews: [aboutButton, infoButton])
        bottomButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomButtonsStackView.distribution = .fillEqually
        
        view.addSubview(bottomButtonsStackView)
        bottomButtonsStackView.anchorWithConstant(top: nil, paddingTop: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 0, leading: view.safeAreaLayoutGuide.leadingAnchor, paddingLeading: 0, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTrailing: 0, width: 0, height: 0)
    }
    
    private func layoutSetup() {
        let topHalfContainerView = UIView()
        let bottomHalfContainerView = UIView()
        view.addSubview(topHalfContainerView)
        view.addSubview(bottomHalfContainerView)
        topHalfContainerView.translatesAutoresizingMaskIntoConstraints = false
        bottomHalfContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topHalfContainerView.addSubview(titleTextView)
        titleTextView.centerXAnchor.constraint(equalTo: topHalfContainerView.centerXAnchor).isActive = true
        titleTextView.centerYAnchor.constraint(equalTo: topHalfContainerView.centerYAnchor).isActive = true
        
        bottomHalfContainerView.addSubview(descriptionTextViewTwo)
        descriptionTextViewTwo.centerXAnchor.constraint(equalTo: bottomHalfContainerView.centerXAnchor).isActive = true
        descriptionTextViewTwo.centerYAnchor.constraint(equalTo: bottomHalfContainerView.centerYAnchor).isActive = true
        descriptionTextViewTwo.heightAnchor.constraint(equalTo: bottomHalfContainerView.heightAnchor, multiplier: 0.7).isActive = true
        
        view.addSubview(descriptionTextViewOne)
        descriptionTextViewOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionTextViewOne.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        topHalfContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topHalfContainerView.anchorWithConstant(top: view.topAnchor, paddingTop: 0, bottom: nil, paddingBottom: 0, leading: view.leadingAnchor, paddingLeading: 0, trailing: view.trailingAnchor, paddingTrailing: 0, width: 0, height: 0)
        
        bottomHalfContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        bottomHalfContainerView.anchorWithConstant(top: nil, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, leading: view.leadingAnchor, paddingLeading: 0, trailing: view.trailingAnchor, paddingTrailing: 0, width: 0, height: 0)
        
        backgroundImageView.anchorWithConstant(top: view.topAnchor, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, leading: view.leadingAnchor, paddingLeading: 0, trailing: view.trailingAnchor, paddingTrailing: 0, width: 0, height: 0)
    }
}

extension UIView {
    func anchorWithConstant(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBottom: CGFloat, leading: NSLayoutXAxisAnchor?, paddingLeading: CGFloat, trailing: NSLayoutXAxisAnchor?, paddingTrailing: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: paddingTrailing).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isAccessibilityElement = true
        }
    }
}

