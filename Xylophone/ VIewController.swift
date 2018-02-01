//
//  ViewController.swift
//  Xylophone
//
//  Created by Mariya Eggensperger  on 1/29/18.
//  Copyright © 2018 Mariya Eggensperger. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
   // Declare an audio player
   var player : AVAudioPlayer!
   var selectedSoundFile : String = ""
   let soundArray = ["note1", "note2", "note3", "note4", "note5", "note5", "note6", "note7"]
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
   @IBAction func noteTapped(_ sender: UIButton) {
      
      selectedSoundFile = soundArray[sender.tag - 1]
      print(selectedSoundFile, ", tag:", sender.tag - 1)
      playSound()
   }
   func playSound(){
      let soundUrl = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")
      do {
         try player = AVAudioPlayer(contentsOf: soundUrl!)
      } catch {
         print(error)
      }
      // Play the audio sound
      player.play()
   }
   
}

