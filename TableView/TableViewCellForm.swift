//
//  TableViewCellForm.swift
//  TableView
//
//  Created by Erik-Park on 2020/05/17.
//  Copyright © 2020 Erik-Park. All rights reserved.
//

import Foundation
import UIKit

class TableViewCellForm: UITableViewCell {
    
    @IBOutlet weak var lblTableCell: UILabel!
    
    func setDatas(data: [String:Any]) {
        self.lblTableCell.text = "\(data["label"] as! String)"
    }
    
}
