//
//  ViewController.swift
//  Day - 5 DynamicAppIcon
//
//  Created by Prashant Gaikwad on 3/28/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func appIcon1Tapped(_ sender: UIButton) {
    changeIcon(to: "AppIconAlternate1")
  }
  @IBAction func appIcon2Tapped(_ sender: UIButton) {
    changeIcon(to: "AppIconAlternate2")
  }
  @IBAction func appIcon3Tapped(_ sender: UIButton) {
    changeIcon(to: "AppIconAlternate3")
  }
  @IBAction func resetAppIconTapped(_ sender: UIButton) {
    //Set the icon name to nil, the app will display its primary icon.
    changeIcon(to: nil)
  }
  func changeIcon(to name: String?) {
    //Check if the app supports alternating icons
    guard UIApplication.shared.supportsAlternateIcons else {
      return;
    }
    
    //Change the icon to a specific image with given name
    UIApplication.shared.setAlternateIconName(name) { (error) in
      //After app icon changed, print our error or success message
      if let error = error {
        print("App icon failed to due to \(error.localizedDescription)")
      } else {
        print("App icon changed successfully.")
      }
    }
  }
  
}

