//
//  ContainerViewController.swift
//  lesson16 HW sideBar
//
//  Created by Сергей Золотухин on 18.10.2021.
//

import UIKit

class ContainerViewController: UIViewController, MainViewControllerDelegate {

    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureMainViewController()
    }
    
    func configureMainViewController() {
        let mainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MainViewController
        
        mainViewController.delegate  = self
        
        controller = mainViewController
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            print("Добавили menuViewController")
        }
    }
    
    func showMenuViewController(shouldMove: Bool) {
        if shouldMove {
            //show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
                
            }) { (finished) in
                
            }
            
        } else {
           // remove menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.controller.view.frame.origin.x = 0
                
            }) { (finished) in
                
            }
        }
    }

    
    // MARK: MainViewControllerDelegate
    
    func toggleMenu() {
        configureMenuViewController()
        isMove = !isMove
        showMenuViewController(shouldMove: isMove)
    }



}
