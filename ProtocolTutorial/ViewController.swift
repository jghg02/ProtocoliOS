//
//  ViewController.swift
//  ProtocolTutorial
//
//  Created by Josue Hernandez on 9/27/15.
//  Copyright © 2015 Josue Hernandez. All rights reserved.
//

import UIKit

//implement Protocol
class ViewController: UIViewController, SetNameProtocolo {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "ViewController"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Important
        if segue.identifier == "view" {
            //Instantiate SecondViewController
            let secondViewController : SecondViewController = segue.destinationViewController as! SecondViewController
            //Importan
            secondViewController.delegate = self
        }
    }

    //Implement Function to define into Protocol
    func setName(name:String) {
        //Set Text into Label
        textLabel.text = "Hi. your Name is \(name)"
    }

}

