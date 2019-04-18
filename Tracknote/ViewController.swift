//
//  ViewController.swift
//  Tracknote
//
//  Created by Nan Min on 11/30/18.
//  Copyright © 2018 Bill Min. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    guard let fromView = selectedViewController?.view, let toView = viewController.view else {
      return false // Make sure you want this as false
    }
    
    if fromView != toView {
      let temp = viewController as! UINavigationController
      let temp2 = temp.topViewController as! TestViewController
      temp2.animateViewAppear()
//      UIView.transition(from: fromView, to: toView, duration: 5, options: [.transitionCurlUp], completion: nil)
    }
    
    return true
  }

}

