//
//  ViewController.swift
//  AutoLayoutAdvanced
//
//  Created by Emiliano Alfredo Martinez Vazquez D3 on 3/29/19.
//  Copyright © 2019 Emiliano Alfredo Martinez Vazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var imageName = String()
    
    var pageIndex = 0
    
    override func viewDidLoad() {

        super.viewDidLoad()
        setupConstraints()
        setupUI()
        
        
        /*let cyanView = UIView()
        cyanView.backgroundColor = .cyan
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        //cyanView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cyanView)
        view.addSubview(purpleView)
        view.addSubview(greenView)
        view.addSubview(redView)
        view.addSubview(yellowView)
        
        cyanView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, trailing: view.layoutMarginsGuide.trailingAnchor, bottom: nil,size: CGSize(width: 100, height: 100))
        
        purpleView.anchor(top: cyanView.bottomAnchor, leading: cyanView.leadingAnchor, trailing: cyanView.trailingAnchor, bottom: nil, padding: UIEdgeInsets(top: 8.0, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 100))
        
        greenView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.layoutMarginsGuide.leadingAnchor, trailing: cyanView.leadingAnchor, bottom: nil, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8.0), size: CGSize(width: 0, height: 208))
        
        redView.anchor(top: purpleView.bottomAnchor, leading: cyanView.leadingAnchor, trailing: cyanView.trailingAnchor, bottom: nil, padding: UIEdgeInsets(top: 8.0, left: 0, bottom: 0, right: 0), size: CGSize(width: 100, height: 100))
        
        yellowView.anchor(top: purpleView.bottomAnchor, leading: nil, trailing: redView.leadingAnchor, bottom: nil, padding: UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 8.0), size: CGSize(width: 100, height: 100))*/
        
        
    }
    
    func setupUI(){
        textView.isEditable = false
        textView.isSelectable = false
        
        imageView.image = UIImage(named: imageName)
    }

    func setupConstraints(){
        
        containerView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil)
        
        containerView.dimensionAnchors(height: view.heightAnchor, heightMultiplier: 0.5, width: nil)
        
        textView.anchor(top: containerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: view.bottomAnchor, padding: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        
        imageView.centerAnchors(centerX: containerView.centerXAnchor, centerY: containerView.centerYAnchor)
        
        imageView.dimensionAnchors(height: containerView.heightAnchor, heightMultiplier: 0.5, width: nil)
        
    }

}

