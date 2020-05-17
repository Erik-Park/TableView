//
//  TableViewController.swift
//  TableView
//
//  Created by Erik-Park on 2020/05/17.
//  Copyright © 2020 Erik-Park. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewInfo: UILabel!
    
    var dataList: Array<Dictionary<String, Any>> = [[:]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.initializeTableView()
    }

    func setDataList() {
        self.tableViewInfo.text = "Table View Info"
        self.dataList.removeAll()
        self.dataList.append(["label":"Table Cell Top Content"])
        for row in 1...30 {
            self.dataList.append(["label":"Table Cell : \(row)"])
        }
    }

}

extension TableViewController: UITableViewDelegate {
    
    func initializeTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self

        self.setDataList()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("TableViewHeader", owner: self, options: nil)![0] as! UIView
        let header = headerView as! TableViewHeader
        header.doSomething()
        return headerView
    }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = self.dataList[indexPath.row]
        if (indexPath.row == 0) {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCellTopContent") as! TableViewCellTopContent
            cell.setDatas(data: data)
            return cell
        } else {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCellForm") as! TableViewCellForm
            cell.setDatas(data: data)
            return cell
        }
    }
    
}
