//
//  ViewController.swift
//  ConverterCurrency
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit



class ViewController: UIViewController,CurrencyItemControllerDelegate{
    func addItemViewControllerDidCancel(_ controller: CurrencyListTableViewController) {
        navigationController?.popViewController(animated:true)
    }
    var usd = 0.0
    var cad = 0.0
    var inr = 0.0
    var euro = 0.0
    var isFrom = true
    @IBOutlet weak var toText: UITextField!
    @IBOutlet weak var fromText: UITextField!
    
    @IBOutlet weak var amtText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func converCurrency(_ sender: Any) {
        
        if(amtText.text == ""){
            return
        }
        if(fromText.text == "INR") {
            
            usd = 0.014
            cad = 0.019
            inr = 1
            euro = 0.013
            
            var val = ""
            if(toText.text == "INR"){
                
                val = amtText.text!
                
                self.resultLabel.text = String(val)
            }
            if(toText.text == "CAD"){
                
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(cad)
                self.resultLabel.text =  String(format:"%.2f", result)
            }
            if(toText.text == "EURO"){
                
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(euro)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "USD"){
                
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(usd)
                self.resultLabel.text = String(format:"%.2f", result)
            }
        }
        
        
        if(fromText.text == "CAD"){
            var val = ""
            usd = 0.76
            cad = 1.0
            inr = 54.0
            euro = 0.68
            var result = 0.0
            if(toText.text == "INR"){
                
                
                val = amtText.text!
                
                result = Double(val)! * Double(inr)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "CAD"){
                
                
                
                val = amtText.text!
                
                self.resultLabel.text = String(val)
                
            }
            if(toText.text == "EURO"){
                
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                
                result = Double(val)! * Double(euro)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "USD"){
                
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                
                result = Double(val)! * Double(usd)
                self.resultLabel.text = String(format:"%.2f", result)
            }
        }
        
        if(fromText.text == "USD"){
                           var val = ""
                           usd = 1.0
                           cad = 1.32
                           inr = 71.06
                           euro = 0.90
                              var result = 0.0
                           
            if(toText.text == "INR"){
                               
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(inr)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "CAD"){
                               
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(cad)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "EURO"){
                               
                               //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                               val = amtText.text!
                               //?? "0.0") * cad
                            
                               result = Double(val)! * Double(euro)
                         
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "USD"){
                               
                               
                               val = amtText.text!
                               
                               self.resultLabel.text = String(val)
                         
                                           }
                   }
        
        if(fromText.text == "EURO"){
                           var val = ""
                           usd = 1.11
                           cad = 1.46
                           inr = 79.11
                           euro = 1.0
                            var result = 0.0
                           if(toText.text == "INR"){
                               
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(inr)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "CAD"){
                               
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(cad)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "EURO"){
                               
                               val = amtText.text!
                               
                               self.resultLabel.text = String(val)
                           }
                           if(toText.text == "USD"){
                               
                               //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                               val = amtText.text!
                               //?? "0.0") * cad
                              
                               result = Double(val)! * Double(usd)
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           
                           
                       }
        
        
        
        
    }
    func addItemViewController(_ controller: CurrencyListTableViewController, didFinishAdding item: CurrencyItem) {
        // let newRowIndex = items.count
        //           items.append(item)
        //           let indexPath = IndexPath(row: newRowIndex, section: 0)
        //           let indexPaths = [indexPath]
        //           tableView.insertRows(at: indexPaths, with: .automatic)
        
        print("\(item.text)")
        if(isFrom){
            fromText.text = item.text
        }else{
            toText.text = item.text
        }
        navigationController?.popViewController(animated:true)
    }
    
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //    func addItemViewControllerDidCancel(_ controller: CurrencyListTableViewController) {
    //         navigationController?.popViewController(animated:true)
    //    }
    //
    //    func addItemViewController(_ controller: CurrencyListTableViewController, didFinishAdding item: CurrencyItem) {
    //
    //    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectCurrency" {
            isFrom = true
            let controller = segue.destination
                as! CurrencyListTableViewController
            controller.delegate = self
        }
        
        if segue.identifier == "selectTocurrency" {
            isFrom = false
            let controller = segue.destination
                as! CurrencyListTableViewController
            controller.delegate = self
        }
        
    }
    
    
    
    //    @IBAction func buttonClick(_ sender: Any) {
    //
    ////        if segue.identifier == "CheckCurrency" {
    ////
    ////                 let controller = segue.destination
    ////                     as! AddNewItemController
    ////                 controller.delegate = self
    ////             }
    //        // navigationController?.popViewController(animated:true)
    //    }
    
    //      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //          if segue.identifier == "AddItem" {
    //
    //              let controller = segue.destination
    //                  as! AddNewItemController
    //              controller.delegate = self
    //          }}
    //
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("Will Appered")
    }
    
    
}

