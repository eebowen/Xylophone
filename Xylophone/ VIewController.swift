//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer = AVAudioPlayer()
    let buttonTagArr = [1,2,3,4,5,6,7]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        //sender.tag
       playSound(sender.tag)
        //print(sender.tag)
    }
    
    func playSound(_ tag: Int){
        let soundURL = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        } catch{
            print(error)
        }
        audioPlayer.play()
    }
    
  

}


