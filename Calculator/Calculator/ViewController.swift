//
//  ViewController.swift
//  Calculator
//
//  Created by 공혁준 on 2021/06/29.
//

import UIKit

class ViewController: UIViewController {
    
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
        print("AC")
    }
    
    @IBAction func touchPlusMinusButton(_ sender: Any) {
        print("PlusMinus")
    }
    
    @IBAction func touchPercentButton(_ sender: Any) {
        print("Percent")
    }
    
    @IBAction func touchDivideButton(_ sender: Any) {
        print("Divide")
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

    }


}

