//
//  UnlockButton.swift
//  BluetoothDoorRemote
//
//  Created by James Lennon on 10/14/16.
//  Copyright © 2016 James Lennon. All rights reserved.
//

import UIKit

class UnlockButton: UIButton {
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = Colors.blueColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
