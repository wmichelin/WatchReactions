//
//  TableInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Walter Michelin on 12/24/19.
//  Copyright © 2019 Walter Michelin. All rights reserved.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {
    @IBOutlet var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        table.setNumberOfRows(20, withRowType: "Row")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
