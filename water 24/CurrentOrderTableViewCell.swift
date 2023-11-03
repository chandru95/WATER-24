//
//  CurrentOrderTableViewCell.swift
//  water 24
//
//  Created by Admin on 06/10/23.
//

import UIKit

class CurrentOrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tablecellview: UIView!
    
    @IBOutlet weak var profile: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var acceptButton: UIButton!
    
    @IBOutlet weak var rejectButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        buttondesign(button: rejectButton)
        buttondesign(button: acceptButton)
        tablecellview.layer.cornerRadius = 14
        tablecellview.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func buttondesign(button: UIButton){
        switch button{
        case acceptButton:
            button.setTitle("Accept", for: .normal)
            button.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            button.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0), for: .normal)
            acceptButton.layer.cornerRadius = 15
            
        case rejectButton:
            button.setTitle("Reject", for: .normal)
            button.backgroundColor = UIColor(red: 217/255, green: 83/255, blue: 79/255, alpha: 1.0)
            button.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0), for: .normal)
            rejectButton.layer.cornerRadius = 15
            
        default:break
        }
   
        
    }

}
