//
//  LaunchVC.swift
//  SlideMenuDemo
//
//  Created by Yashwant Kumar on 15/03/18.
//  Copyright © 2018 Yashwant. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func SlideButton_Action(_ sender: Any)
    {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "Screen1")
        let menuVC = self.storyboard?.instantiateViewController(withIdentifier: "Drawer")
        
        appDel.drawerController.mainViewController = mainVC
        appDel.drawerController.drawerViewController = menuVC
        //                appDel.drawerController.screenEdgePanGestureEnabled = false
        
        appDel.window?.rootViewController = appDel.drawerController
        appDel.window?.makeKeyAndVisible()
    }


}
