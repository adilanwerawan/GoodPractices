//
//  PhotoListDataSource.swift
//  GoodPractices
//
//  Created by MacBook on 22/04/2022.
//

import Foundation
import UIKit

extension PhotoListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photoListCell = PhotoListCell.dequeue(tableView: tableView)
        return photoListCell
    }
}
