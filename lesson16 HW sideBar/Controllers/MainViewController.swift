//
//  ViewController.swift
//  lesson16 HW sideBar
//
//  Created by Сергей Золотухин on 18.10.2021.
//

import UIKit

protocol MainViewControllerDelegate {
    func toggleMenu()
}

class MainViewController: UIViewController {
    
    var delegate: MainViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
         
    }


    @IBAction func menuButton(_ sender: UIButton) {
        
        delegate?.toggleMenu()
    }
    
}

