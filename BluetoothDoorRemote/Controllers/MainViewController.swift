//
//  MainViewController.swift
//  BluetoothDoorRemote
//
//  Created by James Lennon on 10/14/16.
//  Copyright © 2016 James Lennon. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private let unlockButton = UnlockButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* config */
        view.backgroundColor = UIColor.white
        
        /* add subviews */
        view.addSubview(unlockButton)
        
        /* config subviews */
        unlockButton.frame = view.frame
        
    }
    
}
