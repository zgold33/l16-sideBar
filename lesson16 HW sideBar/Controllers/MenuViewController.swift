//
//  MenuViewController.swift
//  lesson16 HW sideBar
//
//  Created by Сергей Золотухин on 18.10.2021.
//

import UIKit

var scrollView: UIScrollView!

let view1 = UIView()

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.backgroundColor = .black
        view.addSubview(view1)
        view1.layer.cornerRadius = 25
        view1.frame = CGRect(x: view.frame.width / 4, y:  view.frame.height / 2, width: 50, height: 50)

        view.backgroundColor = UIColor.red
     
    }
    
    


}
