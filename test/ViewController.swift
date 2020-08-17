//
//  ViewController.swift
//  test
//
//  Created by Айк Шатворян on 16.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var backGraund: UIView!
    @IBOutlet weak var lableText: UILabel!
    @IBOutlet weak var changeSwich: UISwitch!
    private var dark: Bool = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if dark {
            return .lightContent
        } else {
            return .default
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeSwichOnOff(_ sender: Any) {
        if changeSwich.isOn {
            backGraund.backgroundColor = UIColor.black
            lableText.textColor = UIColor.white
        }else{
            backGraund.backgroundColor = UIColor.white
            lableText.textColor = UIColor.black
        }
        
        self.dark = changeSwich.isOn
        self.setNeedsStatusBarAppearanceUpdate()
    }
    

}

