//
//  ViewController.swift
//  MI APP
//
//  Created by Luis Chávez on 13/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBAction func cambiarAction(sender: AnyObject) {
        etiqueta.text = capoDeTexto.text
    }
    
    @IBOutlet weak var capoDeTexto: UITextField!
    
    @IBAction func sliderAction(sender: AnyObject) {
        let slider = sender as! UISlider
        etiqueta.text = "\(slider.value)"
    }
    
    @IBAction func switchAction(sender: UISwitch) {
        if sender.on == true{
            etiqueta.hidden = true
        }else{
            etiqueta.hidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        etiqueta.text = "Luis Chávez"
        
    }


    @IBAction func cambiarVista(sender: AnyObject) {
        performSegueWithIdentifier("informacionSegue", sender: nil)
    }

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "informacionSegue"{
            let segundoVC = segue.destinationViewController as! SegundoViewController
            segundoVC.texto = capoDeTexto.text
        }
    }
    
}

