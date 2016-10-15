//
//  UnlockButton.swift
//  BluetoothDoorRemote
//
//  Created by James Lennon on 10/14/16.
//  Copyright © 2016 James Lennon. All rights reserved.
//

import UIKit

class UnlockButton: UIButton {
    
    private let label = UILabel()
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = Colors.blueColor
        
        addSubview(label)
        
        label.text = "Hold to Unlock"
        label.textColor = UIColor.white
        label.sizeToFit()
        label.frame.origin = CGPoint(x: frame.width / 2, y: frame.height / 2)
        
        let tapGR = UILongPressGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tapGR)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleTap(recognizer: UILongPressGestureRecognizer) {
        if recognizer.state == .began {
            UIView.animate(withDuration: 0.25, animations: { 
                self.backgroundColor = UIColor.white
            })
        } else if recognizer.state == .ended {
            UIView.animate(withDuration: 0.25, animations: {
                self.backgroundColor = Colors.blueColor
            })
        }
    }
    
}
