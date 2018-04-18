//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jeffrey Freet on 4/18/18.
//  Copyright © 2018 jpfvx8. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    let colors = [(name: "Red", uicolor: UIColor.red),
                  (name: "Orange", uicolor: UIColor.orange),
                  (name: "Yellow", uicolor: UIColor.yellow),
                  (name: "Green", uicolor: UIColor.green),
                  (name: "Blue", uicolor: UIColor.blue),
                  (name: "Purple", uicolor: UIColor.purple)]
    
    var selectedColor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = colors[0].name
        self.view.backgroundColor = colors[0].uicolor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedColor = colors[row].name
        colorLabel.text = selectedColor
        self.view.backgroundColor = colors[row].uicolor
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
