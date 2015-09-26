//
//  ViewController.swift
//  Tipster
//
//  Created by Russell Lauletta on 9/26/15.
//  Copyright © 2015 Russell Lauletta. All rights reserved.
//

//double is a term for a number with decimal places

//print sends notes to developer.



import UIKit

//don't worry about import UIKit

class ViewController: UIViewController {
//this is the same ViewController in the yellow circle to the left
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    //IBOutlet means "this talks to something in a view". Hover over the little circle in line with this to see what it connects to.
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var numberOfPeopleField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        tipAmountLabel.backgroundColor = UIColor.greenColor()
        
        //tipAmountLabel needs to be inside the override func viewDidLoad {}s
        
        numberOfPeopleField.text = "1"
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.23]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var numberOfPeople = NSString(string: numberOfPeopleField.text!).doubleValue
        let billAmount = NSString(string: billAmountField.text!).doubleValue
        let tipAmount = billAmount * tipPercentage
        
        if (numberOfPeople < 1) {
            numberOfPeople = 1
        }
        let total = (billAmount + tipAmount) / numberOfPeople
        
        print(tipAmount)
        print(total)
        
        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
        
        print(tipControl.selectedSegmentIndex)
    
    
        // right click text field, then click and drag editing change to fix how number of people helps calculate the bill for each person
        // use "\(;asdf)" to put number values in when xCode says there's errors
    }

}

