//
//  FileManager-DocumentsDirectory.swift
//  WatchReactions WatchKit Extension
//
//  Created by Walter Michelin on 12/25/19.
//  Copyright © 2019 Walter Michelin. All rights reserved.
//

import Foundation

extension FileManager {
    func getDocumentsDirectory() -> URL {
        let paths = urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
