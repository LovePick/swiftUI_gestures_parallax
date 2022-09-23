//
//  AudioPlayer.swift
//  Restart
//
//  Created by Supapon Pucknavin on 23/9/2565 BE.
//

import Foundation
import AVFoundation

var audopPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audopPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audopPlayer?.play()
        } catch {
            print("Could not play the sound file.")
            print(error)
        }
    }
}
