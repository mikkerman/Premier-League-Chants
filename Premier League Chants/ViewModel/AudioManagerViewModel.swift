//
//  AudioManagerViewModel.swift
//  Premier League Chants
//
//  Created by Михаил Герман on 08.08.2023.
//

import Foundation
import AVKit

class AudioManagerViewModel {
    
    private var chantAudioPlayer: AVAudioPlayer?
    
    func playback(_ team: Team){
        if team.isPlaying {
            chantAudioPlayer?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile).mp3",
                                              ofType: nil) else {return}
            let url = URL(fileURLWithPath: path)
            do {
                chantAudioPlayer = try AVAudioPlayer(contentsOf: url)
                chantAudioPlayer?.numberOfLoops = -1
                chantAudioPlayer?.play()
            } catch {
                print(error)
            }
        }
    }
}

