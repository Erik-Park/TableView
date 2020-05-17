//
//  TableViewCellTopContent.swift
//  TableView
//
//  Created by Erik-Park on 2020/05/17.
//  Copyright © 2020 Erik-Park. All rights reserved.
//

import Foundation
import UIKit

class TableViewCellTopContent: UITableViewCell {
    
    @IBOutlet weak var lblCellTop: UILabel!
    
    func setDatas(data: [String:Any]) {
        self.lblCellTop.text = "\(data["label"] as! String)"
    }
}
