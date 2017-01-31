//
//  SegundoViewController.swift
//  MI APP
//
//  Created by Luis Chávez on 13/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    
    var texto: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultado.text = texto
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
