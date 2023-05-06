//
//  ViewController.swift
//  Calculator
//
//  Created by 大森青 on 2023/05/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var clearButton: UIButton!
    
    var showedNumber: Int = 0
    var savedNumber: Int = 0
    var operation: Operation?
    
    enum Operation {
        case plus
        case takeAway
        case product
        case divide
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select0() {
        tappedNumber(tappedNumber: 0)
        changeColor()
    }
    @IBAction func select1() {
        tappedNumber(tappedNumber: 1)
        changeColor()
    }
    @IBAction func select2() {
        tappedNumber(tappedNumber: 2)
        changeColor()
    }
    @IBAction func select3() {
        tappedNumber(tappedNumber: 3)
        changeColor()
    }
    @IBAction func select4() {
        tappedNumber(tappedNumber: 4)
        changeColor()
    }
    @IBAction func select5() {
        tappedNumber(tappedNumber: 5)
        changeColor()
    }
    @IBAction func select6() {
        tappedNumber(tappedNumber: 6)
        changeColor()
    }
    @IBAction func select7() {
        tappedNumber(tappedNumber: 7)
        changeColor()
    }
    @IBAction func select8() {
        tappedNumber(tappedNumber: 8)
        changeColor()
    }
    @IBAction func select9() {
        tappedNumber(tappedNumber: 9)
        changeColor()
    }
    @IBAction func plus() {
        operation(operation: .plus)
        changeColor()
    }
    @IBAction func takeAway() {
        operation(operation: .takeAway)
        changeColor()
    }
    @IBAction func product() {
        operation(operation: .product)
        changeColor()
    }
    @IBAction func divide() {
        operation(operation: .divide)
        changeColor()
    }
    @IBAction func tappedEqual() {
        equal()
        changeColor()
    }
    @IBAction func tappedClear() {
        clear()
        changeColor()
    }
    
    func operation(operation: Operation) {
        switch operation {
        case .plus:
            savedNumber = showedNumber
            self.operation = .plus
            showedNumber = 0
            resultLabel.text = String(showedNumber)
        case .takeAway:
            savedNumber = showedNumber
            self.operation = .takeAway
            showedNumber = 0
            resultLabel.text = String(showedNumber)
        case .product:
            savedNumber = showedNumber
            self.operation = .product
            showedNumber = 0
            resultLabel.text = String(showedNumber)
        case .divide:
            savedNumber = showedNumber
            self.operation = .divide
            showedNumber = 0
            resultLabel.text = String(showedNumber)
        }
    }
    
    func equal() {
        switch operation {
        case .plus:
            savedNumber += showedNumber
            resultLabel.text = String(savedNumber)
        case .takeAway:
            savedNumber -= showedNumber
            resultLabel.text = String(savedNumber)
        case .product:
            savedNumber *= showedNumber
            resultLabel.text = String(savedNumber)
        case .divide:
            savedNumber /= showedNumber
            resultLabel.text = String(savedNumber)
        case .none:
            return
        }
    }
    
    func clear() {
        if showedNumber == 0 {
            savedNumber = 0
            clearButton.setTitle("C", for: .normal)
            resultLabel.text = String(showedNumber)
        } else {
            showedNumber = 0
            clearButton.setTitle("AC", for: .normal)
            resultLabel.text = String(showedNumber)
        }
    }
    
    func tappedNumber(tappedNumber: Int) {
        showedNumber = (showedNumber * 10) + tappedNumber
        resultLabel.text = String(showedNumber)
    }

    func changeColor() {
        if Int(resultLabel.text ?? "0")! >= 10 {
            resultLabel.textColor = .red
        } else if Int(resultLabel.text ?? "0")! <= -10 {
            resultLabel.textColor = .blue
        } else {
            resultLabel.textColor = .black
        }
    }

}

