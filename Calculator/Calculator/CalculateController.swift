//
//  CalculateController.swift
//  Calculator
//
//  Created by Nazrin on 01.04.24.
//

import UIKit

class CalculateController: UIViewController {
    
    var figure: String = ""
    
    @IBOutlet weak var calculate: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var subtraction: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var multip: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var percent: UIButton!
    @IBOutlet weak var delete: UIButton!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateFiguresLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        setCornerRadius()
    }
    
    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        if (!figure.isEmpty) {
            figure.removeLast()
            calculateFiguresLabel.text = figure
        }
    }
    
    @IBAction func percentageButton(_ sender: Any) {
        addToFigure(value: "%")
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        addToFigure(value: "/")
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        addToFigure(value: "7")
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        addToFigure(value: "8")
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        addToFigure(value: "9")
    }
    
    @IBAction func multiplicationButton(_ sender: Any) {
        addToFigure(value: "*")
    }
    
    @IBAction func fourTapped(_ sender: Any) {
        addToFigure(value: "4")
    }
    
    @IBAction func fiveTaped(_ sender: Any) {
        addToFigure(value: "5")
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        addToFigure(value: "6")
    }
    
    @IBAction func subtractionTapped(_ sender: Any) {
        addToFigure(value: "-")
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        addToFigure(value: "1")
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        addToFigure(value: "2")
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        addToFigure(value: "3")
    }
    
    @IBAction func additionButton(_ sender: Any) {
        addToFigure(value: "+")
    }
    
    @IBAction func dotButton(_ sender: Any) {
        addToFigure(value: ".")
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
        addToFigure(value: "0")
    }
    
    @IBAction func equalButton(_ sender: Any) {
        let checkedWorkingForPercent = figure.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: checkedWorkingForPercent)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        resultLabel.text = resultString
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0 ) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    func clearAll() {
        figure = ""
        calculateFiguresLabel.text = figure
        resultLabel.text = figure
    }
    
    func addToFigure(value: String) {
        figure = figure + value
        calculateFiguresLabel.text = figure
    }
    
    func setCornerRadius() {
        acButton.configureButton(figureButton: acButton)
        delete.configureButton(figureButton: delete)
        percent.configureButton(figureButton: percent)
        multip.configureButton(figureButton: multip)
        division.configureButton(figureButton: division)
        seven.configureButton(figureButton: seven)
        six.configureButton(figureButton: six)
        eight.configureButton(figureButton: eight)
        nine.configureButton(figureButton: nine)
        one.configureButton(figureButton: one)
        two.configureButton(figureButton: two)
        three.configureButton(figureButton: three)
        five.configureButton(figureButton: five)
        four.configureButton(figureButton: four)
        dot.configureButton(figureButton: dot)
        zero.configureButton(figureButton: zero)
        subtraction.configureButton(figureButton: subtraction)
        plus.configureButton(figureButton: plus)
        
        calculate.layer.cornerRadius = 20
        calculate.clipsToBounds = true
    }
}

