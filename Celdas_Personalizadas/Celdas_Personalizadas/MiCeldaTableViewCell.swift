//
//  MiCeldaTableViewCell.swift
//  Celdas_Personalizadas
//
//  Created by Luis Chávez on 14/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class MiCeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var portada: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
