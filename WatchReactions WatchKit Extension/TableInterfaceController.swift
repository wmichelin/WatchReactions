//
//  TableInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Walter Michelin on 12/24/19.
//  Copyright © 2019 Walter Michelin. All rights reserved.
//

import AVFoundation
import WatchKit


class TableInterfaceController: WKInterfaceController, SoundPlaying {
    @IBOutlet var table: WKInterfaceTable!
    var audioPlayer: AVAudioPlayer?

    let sounds = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil)?.map({
        $0.deletingPathExtension().lastPathComponent
    }).sorted() ?? []

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        table.setNumberOfRows(sounds.count, withRowType: "Row")
        
        for (idx, sound) in sounds.enumerated() {
            guard let row = table.rowController(at: idx) as? SoundRow else { continue }
            row.textLabel.setText(sound)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        playSound(named: sounds[rowIndex])
    }

}
