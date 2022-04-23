//
//  DequeueIntializable.swift
//  GoodPractices
//
//  Created by MacBook on 23/04/2022.
//

import Foundation
import UIKit

protocol DequeueIntializable{
    static var reusableIdentifier:String{get}
}

extension DequeueIntializable where Self:UITableViewCell{
    static var reusableIdentifier:String{
        return String(describing: Self.self)
    }
    
    static func dequeue(tableView:UITableView) -> Self{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.reusableIdentifier) else{
            return UITableViewCell() as! Self
        }
        return cell as! Self
    }
    
    static func register(tableView:UITableView){
        let cellNib = UINib(nibName: self.reusableIdentifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: self.reusableIdentifier)
    }
}

extension DequeueIntializable where Self: UICollectionViewCell{
    static var reusableIdentifier:String{
        return String(describing: Self.self)
    }
    
    static func dequeue(collectionView:UICollectionView, indexPath:IndexPath) -> Self{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reusableIdentifier, for: indexPath)
        return cell as! Self
    }
    
    static func register(collectionView:UICollectionView){
        let cellNib = UINib(nibName: self.reusableIdentifier, bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: self.reusableIdentifier)
    }
}
