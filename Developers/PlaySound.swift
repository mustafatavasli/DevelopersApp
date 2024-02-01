//
//  PlaySound.swift
//  Developers
//
//  Created by Mustafa TAVASLI on 1.02.2024.
//

import Foundation
import AVFoundation

// MARK: AUDIO PLAYER

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String) {
    // App'in root folder'indeki ses dosyasina erisim
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        // Error Handling : Do - Try
        do {
            // Ses dosyamize erismeyi saglama
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            // Error Message
            print("Could not find and play the sound file.")
        }
    }
}
