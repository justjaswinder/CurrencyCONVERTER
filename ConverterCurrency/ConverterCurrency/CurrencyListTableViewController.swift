//
//  CurrencyListViewControllerTableViewController.swift
//  ConverterCurrency
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit


protocol CurrencyItemControllerDelegate {
    
    
    func addItemViewController(_ controller: CurrencyListTableViewController,didFinishAdding item: CurrencyItem)
}

class CurrencyListTableViewController: UITableViewController {
    
    
    var delegate: CurrencyItemControllerDelegate?
    
    var currencyItems: [CurrencyItem]
    
    
    required init?(coder aDecoder: NSCoder) {
        
        currencyItems = [CurrencyItem]()
        let   row0item = CurrencyItem()
        row0item.text = "INR"
        row0item.img = #imageLiteral(resourceName: "india")
        currencyItems.append(row0item)
        
        let   row1item = CurrencyItem()
        row1item.text = "CAD"
        row1item.img = #imageLiteral(resourceName: "canada")
        currencyItems.append(row1item)
        
        
        
        let   row2item = CurrencyItem()
        row2item.text = "EURO"
        row2item.img = #imageLiteral(resourceName: "euro")
        currencyItems.append(row2item)
        
        let   row4item = CurrencyItem()
        row4item.text = "USD"
        row4item.img = #imageLiteral(resourceName: "us")
        currencyItems.append(row4item)
        
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print("Clickeddeddd")
        let   item = currencyItems[indexPath.row]
        delegate?.addItemViewController(self, didFinishAdding: item)
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyItems.count
    }
    
    
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "currencyItem",for: indexPath)
            
            cell.textLabel!.text = currencyItems[indexPath.row].text
            cell.imageView!.image = currencyItems[indexPath.row].img
            return cell
            
    }
}
