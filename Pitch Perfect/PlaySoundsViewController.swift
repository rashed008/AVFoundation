//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Mominur Rahman on 8/14/18.
//  Copyright © 2018 metakave. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if var filePath = Bundle.main.path(forResource: "movie_quote", ofType: "mp3") {
            var filePathURL = NSURL.fileURL(withPath: filePath)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: filePathURL)
                audioPlayer.enableRate = true
            } catch {
                print(error)
            }
        } else {
            print("The file path is empty")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(_ sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }
    
    @IBAction func playFastAudio(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
    
}
