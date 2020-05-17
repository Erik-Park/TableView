//
//  TableViewHeader.swift
//  TableView
//
//  Created by Erik-Park on 2020/05/17.
//  Copyright © 2020 Erik-Park. All rights reserved.
//

import Foundation
import UIKit

class TableViewHeader: UITableViewHeaderFooterView {
    
    @IBOutlet weak var lblHeader: UILabel!
    
    func doSomething() {
        // do something.
        self.lblHeader.text = "Table View Header"
    }
    
}
