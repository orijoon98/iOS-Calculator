//
//  ViewController.swift
//  Calculator
//
//  Created by 공혁준 on 2021/06/29.
//

import UIKit

class ViewController: UIViewController {
    
    var printNum: String = "0"
    
    func changeAC() {
        if printNum == "0" {
            ACButton.setTitle("AC", for: .normal)
        } else {
            ACButton.setTitle("C", for: .normal)
        }
    }
    
    func isDecimal(_ num: String) -> Bool {
        for char in num {
            if char == "." {
                return true
            }
        }
        return false
    }
    
    func numChange(_ num: Int){
        var flag: Bool = true
        var cnt: Int = 0
        for char in printNum {
            if char == "." {
                flag = false
            }
            if !flag {
                cnt += 1
            }
        }
        if flag { // 소수가 아니라면
            if Int(printNum)! >= 0 {
                printNum = String(Int(printNum)! * 10 + num)
            } else {
                printNum = String(Int(printNum)! * 10 - num)
            }
            OutputLabel.text = printNum
        }
        else { // 소수라면
            var change: Double = 1
            for _ in 1...cnt {
                change /= 10
            }
            if Double(printNum)! >= 0 {
                printNum = String(Double(printNum)! + Double(num) * change)
            } else {
                printNum = String(Double(printNum)! - Double(num) * change)
            }
            OutputLabel.text = printNum
        }
    }
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var PlusMinusButton: UIButton!
    @IBOutlet weak var PercentButton: UIButton!
    @IBOutlet weak var DivideButton: UIButton!
    @IBOutlet weak var SevenButton: UIButton!
    @IBOutlet weak var EightButton: UIButton!
    @IBOutlet weak var NineButton: UIButton!
    @IBOutlet weak var MultipleButton: UIButton!
    @IBOutlet weak var FourButton: UIButton!
    @IBOutlet weak var FiveButton: UIButton!
    @IBOutlet weak var SixButton: UIButton!
    @IBOutlet weak var MinusButton: UIButton!
    @IBOutlet weak var OneButton: UIButton!
    @IBOutlet weak var TwoButton: UIButton!
    @IBOutlet weak var ThreeButton: UIButton!
    @IBOutlet weak var PlusButton: UIButton!
    @IBOutlet weak var ZeroButton: UIButton!
    @IBOutlet weak var DotButton: UIButton!
    @IBOutlet weak var EqualButton: UIButton!
    
    @IBAction func touchACButton(_ sender: Any) {
        printNum = "0"
        changeAC()
        OutputLabel.text = printNum
    }
    
    @IBAction func touchPlusMinusButton(_ sender: Any) {
        if isDecimal(printNum) {
            printNum = String(-1 * Double(printNum)!)
        } else {
            printNum = String(-1 * Int(printNum)!)
        }
        OutputLabel.text = printNum
    }
    
    @IBAction func touchPercentButton(_ sender: Any) {
        printNum = String(Double(printNum)! / 100)
        OutputLabel.text = printNum
    }
    
    @IBAction func touchDivideButton(_ sender: Any) {
        print("Divide")
    }
    
    @IBAction func touchSevenButton(_ sender: Any) {
        numChange(7)
        changeAC()
    }
    
    @IBAction func touchEightButton(_ sender: Any) {
        numChange(8)
        changeAC()
    }
    
    @IBAction func touchNineButton(_ sender: Any) {
        numChange(9)
        changeAC()
    }
    
    @IBAction func touchMultipleButton(_ sender: Any) {
        print("Multiple")
    }
    
    @IBAction func touchFourButton(_ sender: Any) {
        numChange(4)
        changeAC()
    }
    
    @IBAction func touchFiveButton(_ sender: Any) {
        numChange(5)
        changeAC()
    }
    
    @IBAction func touchSixButton(_ sender: Any) {
        numChange(6)
        changeAC()
    }
    
    @IBAction func touchMinusButton(_ sender: Any) {
        print("Minus")
    }
    
    @IBAction func touchOneButton(_ sender: Any) {
        numChange(1)
        changeAC()
    }
    
    @IBAction func touchTwoButton(_ sender: Any) {
        numChange(2)
        changeAC()
    }
    
    @IBAction func touchThreeButton(_ sender: Any) {
        numChange(3)
        changeAC()
    }
    
    @IBAction func touchPlusButton(_ sender: Any) {
        print("Plus")
    }
    
    @IBAction func touchZeroButton(_ sender: Any) {
        numChange(0)
        changeAC()
    }
    
    @IBAction func touchDotButton(_ sender: Any) {
        if !isDecimal(printNum) {
            printNum += "."
        }
        OutputLabel.text = printNum
    }
    
    @IBAction func touchEqualButton(_ sender: Any) {
        print("Equal")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
        ACButton.layer.cornerRadius = 34.5
        PlusMinusButton.layer.cornerRadius = 34.5
        PercentButton.layer.cornerRadius = 34.5
        DivideButton.layer.cornerRadius = 34.5
        SevenButton.layer.cornerRadius = 34.5
        EightButton.layer.cornerRadius = 34.5
        NineButton.layer.cornerRadius = 34.5
        MultipleButton.layer.cornerRadius = 34.5
        FourButton.layer.cornerRadius = 34.5
        FiveButton.layer.cornerRadius = 34.5
        SixButton.layer.cornerRadius = 34.5
        MinusButton.layer.cornerRadius = 34.5
        OneButton.layer.cornerRadius = 34.5
        TwoButton.layer.cornerRadius = 34.5
        ThreeButton.layer.cornerRadius = 34.5
        PlusButton.layer.cornerRadius = 34.5
        ZeroButton.layer.cornerRadius = 34.5
        DotButton.layer.cornerRadius = 34.5
        EqualButton.layer.cornerRadius = 34.5

        OutputLabel.text = printNum
    }
}

