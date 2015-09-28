//
//  SecondViewController.swift
//  ProtocolTutorial
//
//  Created by Josue Hernandez on 9/27/15.
//  Copyright © 2015 Josue Hernandez. All rights reserved.
//

import UIKit

//Define Protocolo
public protocol SetNameProtocolo {
    func setName(name:String) -> Void
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var inputText: UITextField!
    
    //Define Protocol like a property 
    var delegate : SetNameProtocolo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "SecondViewController"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickDissmis(sender: AnyObject) {
        
        if (inputText.text != nil) {
            delegate?.setName(inputText.text!)
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
        
    }
    
}



