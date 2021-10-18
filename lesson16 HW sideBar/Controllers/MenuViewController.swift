//
//  MenuViewController.swift
//  lesson16 HW sideBar
//
//  Created by Сергей Золотухин on 18.10.2021.
//

import UIKit

var scrollView: UIScrollView!

let button1 = UIButton()
let button2 = UIButton()
let button3 = UIButton()
let button4 = UIButton()
let view1 = UIView()


var containerView : UIView!


class MenuViewController: UIViewController, UIScrollViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
//        createCircle()
        
        scrollView = UIScrollView()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.frame.width, height: 2000)
        
        containerView = UIView()
        
        scrollView.addSubview(containerView)
        view.addSubview(scrollView)
        
        
        button1.backgroundColor = .green
        containerView.addSubview(button1)
        button1.layer.cornerRadius = 30
        button1.frame = CGRect(x: 50, y:  150, width: 150, height: 75)
        
        button2.backgroundColor = .green
        containerView.addSubview(button2)
        button2.layer.cornerRadius = 30
        button2.frame = CGRect(x: 50, y:  300, width: 150, height: 75)
        
        button3.backgroundColor = .green
        containerView.addSubview(button3)
        button3.layer.cornerRadius = 30
        button3.frame = CGRect(x: 50, y:  450, width: 150, height: 75)
        
        button4.backgroundColor = .green
        containerView.addSubview(button4)
        button4.layer.cornerRadius = 30
        button4.frame = CGRect(x: 50, y:  600, width: 150, height: 75)
        
        view1.backgroundColor = .black
        containerView.addSubview(view1)
        view1.layer.cornerRadius = 25
        view1.frame = CGRect(x: containerView.frame.width / 4, y:  containerView.frame.height / 2, width: 50, height: 50)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        scrollView.frame = view.bounds
        containerView.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
    }
    
//        func createCircle() {
//            view1.backgroundColor = .black
//            containerView.addSubview(view1)
//            view1.layer.cornerRadius = 25
//            view1.frame = CGRect(x: containerView.frame.width / 4, y:  containerView.frame.height / 2, width: 50, height: 50)
//        }
  
}
