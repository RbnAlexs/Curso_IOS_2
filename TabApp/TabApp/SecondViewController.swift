//
//  SecondViewController.swift
//  TabApp
//
//  Created by Luis Chávez on 13/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var arregloDeFlores: [String] = ["Tulipanes", "Rosas", "Girasoles", "Orquidea", "Etc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

   // TableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloDeFlores.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = arregloDeFlores[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)"
        
        return cell
    }
    

    // TableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        print("Celda seleccionada: \(indexPath.row)")
        
        let alert = UIAlertController(title: "AVISO", message: "Seleccionaste la celda \(indexPath.row+1)", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(okButton)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
}









