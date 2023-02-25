//
//  ViewController.swift
//  Light
//
//  Created by Omar on 29/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightBtn: UIButton!
    var lightOn = true

    @IBOutlet weak var my_label: UILabel!
    
    
    
    @IBOutlet weak var switcher_btn: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpadteUI()
        my_label.textColor = .blue
//        switcher_btn.isOn = false
    }

    fileprivate func UpadteUI() {
        if lightOn {
            view.backgroundColor = .white
            lightBtn.setTitle("Off", for: UIControl.State.normal)
            setText(label: my_label, text: "click to switch to dark mode")
        }else{
            view.backgroundColor = .black
            lightBtn.setTitle("On", for: UIControl.State.normal)
            setText(label: my_label, text: "click to switch to light mode")
        }
    }
    func setText( label:UILabel , text:String)
    {
        label.text = text
    }
    
    @IBAction func btn(_ sender: Any) {
        //Swift booleans from true to false or from false to true
        lightOn.toggle()
        UpadteUI()
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if sender.isOn {
            print("switch is on ")
        }else{
            print("switch is off")
        }
    }
    
    
    @IBAction func text_change(_ sender: UITextField) {
        if let text = sender.text {
                print(text)
            }
       
    }
    @IBAction func slider_action(_ sender: Any) {
        print((sender as! UISlider).value)
    }
}

