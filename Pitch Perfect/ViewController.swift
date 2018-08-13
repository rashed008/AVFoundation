//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Mominur Rahman on 8/13/18.
//  Copyright © 2018 metakave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    //var isHiddden : Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.recordingInProgress.isHidden = true
        self.stopButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        //TODO: Show text "Recording in progress"
        self.stopButton.isHidden = false
        self.recordingInProgress.isHidden = false
        //TODO: Record the user voice
        print("in recording")
    }
    
}

