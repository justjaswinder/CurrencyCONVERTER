//
//  ViewController.swift
//  ConverterCurrency
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit



class ViewController: UIViewController,CurrencyItemControllerDelegate,DefaultChangeControllerDelegate{
   
    
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
    @IBOutlet weak var fromImage: UIImageView!
    
    @IBOutlet weak var amtText: UITextField!
    
    @IBOutlet weak var defaultText: UITextField!
    @IBOutlet weak var toImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func converCurrency(_ sender: Any) {
        
        if(amtText.text == ""){
            
            let alert = UIAlertController(title: "Empty Field", message: "Please Enter Amount", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        if(fromText.text == "INR") {
          //  fromImage.image = #imageLiteral(resourceName: "india")
            usd = 0.014
            cad = 0.019
            inr = 1
            euro = 0.013
            
            var val = ""
            if(toText.text == "INR"){
                
                 //     toImage.image = #imageLiteral(resourceName: "india")
                val = amtText.text!
                var result = 0.0
                result = Double(val)! * Double(defaultText.text!)!
                self.resultLabel.text = String(result)
            }
            if(toText.text == "CAD"){
                     // toImage.image = #imageLiteral(resourceName: "canada")
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(defaultText.text!)!//Double(cad)
                self.resultLabel.text =  String(format:"%.2f", result)
            }
            if(toText.text == "EURO"){
             //   toImage.image = #imageLiteral(resourceName: "euro")
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(defaultText.text!)!// Double(euro)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "USD"){
                //      toImage.image = #imageLiteral(resourceName: "euro")
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                //?? "0.0") * cad
                var result = 0.0
                result = Double(val)! * Double(defaultText.text!)!// Double(usd)
                self.resultLabel.text = String(format:"%.2f", result)
            }
        }
        
        
        if(fromText.text == "CAD"){
               //   fromImage.image = #imageLiteral(resourceName: "canada")
            var val = ""
            usd = 0.76
            cad = 1.0
            inr = 54.0
            euro = 0.68
            var result = 0.0
            if(toText.text == "INR"){
                 //     toImage.image = #imageLiteral(resourceName: "india")
                
                val = amtText.text!
                
                result = Double(val)! * Double(defaultText.text!)!//Double(inr)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "CAD"){
               //       toImage.image = #imageLiteral(resourceName: "canada")
                
                val = amtText.text!
                var result = 0.0
                    result = Double(val)! * Double(defaultText.text!)!
                self.resultLabel.text = String(result)
                
            }
            if(toText.text == "EURO"){
                    //  toImage.image = #imageLiteral(resourceName: "euro")
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                
                result = Double(val)! * Double(defaultText.text!)!//Double(euro)
                self.resultLabel.text = String(format:"%.2f", result)
            }
            if(toText.text == "USD"){
                  //    toImage.image = #imageLiteral(resourceName: "us")
                //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                val = amtText.text!
                
                result = Double(val)! * Double(defaultText.text!)!//Double(usd)
                self.resultLabel.text = String(format:"%.2f", result)
            }
        }
        
        if(fromText.text == "USD"){
                 // fromImage.image = #imageLiteral(resourceName: "us")
                           var val = ""
                           usd = 1.0
                           cad = 1.32
                           inr = 71.06
                           euro = 0.90
                              var result = 0.0
                           
            if(toText.text == "INR"){
                        //             toImage.image = #imageLiteral(resourceName: "india")
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(defaultText.text!)!//Double(inr)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "CAD"){
                         //            toImage.image = #imageLiteral(resourceName: "canada")
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(defaultText.text!)!//Double(cad)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "EURO"){
                               //      toImage.image = #imageLiteral(resourceName: "euro")
                               //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                               val = amtText.text!
                               //?? "0.0") * cad
                            
                               result = Double(val)! * Double(defaultText.text!)!//Double(euro)
                         
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "USD"){
                               
                                //     toImage.image = #imageLiteral(resourceName: "us")
                               val = amtText.text!
                               var result = 0.0
                                   result = Double(val)! * Double(defaultText.text!)!
                               self.resultLabel.text = String(result)
                         
                                           }
                   }
        
        if(fromText.text == "EURO"){
                //  fromImage.image = #imageLiteral(resourceName: "euro")
                           var val = ""
                           usd = 1.11
                           cad = 1.46
                           inr = 79.11
                           euro = 1.0
                            var result = 0.0
                           if(toText.text == "INR"){
                         //            toImage.image = #imageLiteral(resourceName: "india")
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(defaultText.text!)!//Double(inr)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "CAD"){
                            //         toImage.image = #imageLiteral(resourceName: "canada")
                               val = amtText.text!
                               //?? "0.0") * cad
                               
                               result = Double(val)! * Double(defaultText.text!)!//Double(cad)
                               
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           if(toText.text == "EURO"){
                             //        toImage.image = #imageLiteral(resourceName: "euro")
                               val = amtText.text!
                               var result = 0.0
                                   result = Double(val)! * Double(defaultText.text!)!
                               self.resultLabel.text = String(result)
                           }
                           if(toText.text == "USD"){
                           //          toImage.image = #imageLiteral(resourceName: "us")
                               //scoreLabel.text = NSString(format: "Score: %i", Score) as String
                               val = amtText.text!
                               //?? "0.0") * cad
                              
                               result = Double(val)! * Double(defaultText.text!)!// Double(usd)
                               self.resultLabel.text = String(format:"%.2f", result)
                           }
                           
                           
                       }
        
        
        
        
    }
    
    
    func changeRateViewController(_ controller: ChangeRateViewController, didFinishAdding changedRate: String) {
        //   <#code#>
        
        print("ssssss== \(changedRate)")
        
        defaultText.text = changedRate
        
        resultLabel.text = "see result here"
        navigationController?.popViewController(animated:true)
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
              fromImage.image = item.img
            
        }else{
            
            
            toImage.image = item.img
            toText.text = item.text
        }
        
        setDfaultValue()
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
        
        
        if segue.identifier == "changeDefault" {
               
            
                 let controller1 = segue.destination
                     as! ChangeRateViewController
                 controller1.delegateDF = self
            
          
//                 if let defvalue = defaultText.text! {
            controller1.itemToEdit = defaultText.text!
               
        }
//             }
    }
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("Will Appered")
    }
    
    func setDfaultValue(){
        if(fromText.text == "INR") {
             //  fromImage.image = #imageLiteral(resourceName: "india")
               usd = 0.014
               cad = 0.019
               inr = 1
               euro = 0.013
               
               if(toText.text == "INR"){
                   defaultText.text = String(inr)
                  
               }
               if(toText.text == "CAD"){
                       defaultText.text = String(cad)
              
               }
               if(toText.text == "EURO"){
                       defaultText.text = String(euro)
             
               }
               if(toText.text == "USD"){
                       defaultText.text = String(usd)
               
               }
           }
        
        
        if(fromText.text == "CAD"){
           
             usd = 0.76
             cad = 1.0
             inr = 54.0
             euro = 0.68
            
            if(toText.text == "INR"){
                              defaultText.text = String(inr)
                             
                          }
                          if(toText.text == "CAD"){
                                  defaultText.text = String(cad)
                         
                          }
                          if(toText.text == "EURO"){
                                  defaultText.text = String(euro)
                        
                          }
                          if(toText.text == "USD"){
                                  defaultText.text = String(usd)
                          
                          }
         }
         
        if(fromText.text == "USD"){
                             
                                  usd = 1.0
                                  cad = 1.32
                                  inr = 71.06
                                  euro = 0.90
                                  
              if(toText.text == "INR"){
                                          defaultText.text = String(inr)
                                         
                                      }
                                      if(toText.text == "CAD"){
                                              defaultText.text = String(cad)
                                     
                                      }
                                      if(toText.text == "EURO"){
                                              defaultText.text = String(euro)
                                    
                                      }
                                      if(toText.text == "USD"){
                                              defaultText.text = String(usd)
                                      
                                      }
                          }
        
        if(fromText.text == "EURO"){
           
                           usd = 1.11
                           cad = 1.46
                           inr = 79.11
                           euro = 1.0
                    if(toText.text == "INR"){
                                            defaultText.text = String(inr)
                                           
                                        }
                                        if(toText.text == "CAD"){
                                                defaultText.text = String(cad)
                                       
                                        }
                                        if(toText.text == "EURO"){
                                                defaultText.text = String(euro)
                                      
                                        }
                                        if(toText.text == "USD"){
                                                defaultText.text = String(usd)
                                        
                                        }
                           
                           
                       }
           
    }
}

