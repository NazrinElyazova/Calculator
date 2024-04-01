//
//  CalculateController.swift
//  Calculator
//
//  Created by Nazrin on 01.04.24.
//

import UIKit

class CalculateController: UIViewController {
    
    var figure: String = ""
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateFiguresLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
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
        addToFigure(value: "=")

    }
    
    func clearAll() {
        figure = ""
        calculateFiguresLabel.text = figure
        resultLabel.text = figure
    }
    
    func addToFigure(value: String) {
        let fig = figure + value
        calculateFiguresLabel.text = fig
    }
}
