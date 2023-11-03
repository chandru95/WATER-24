//
//  ViewController.swift
//  water 24
//
//  Created by Admin on 06/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Marks: Outlets
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var vectorimage: UIImageView!
    
    @IBOutlet weak var orderslabel: UILabel!
    
    
    
    @IBOutlet weak var bellimage: UIImageView!
    
    
    @IBOutlet weak var topStackview: UIStackView!
    
    
    @IBOutlet weak var downStackview: UIStackView!
    
    
    @IBOutlet weak var currentlabel: UILabel!
    
    @IBOutlet weak var ongoinglabel: UILabel!
    
    @IBOutlet weak var completedlabel: UILabel!
    
    
    @IBOutlet weak var tintview: UIView!
    
    @IBOutlet weak var tintview2:UIView!
    
    @IBOutlet weak var tintview3: UIView!
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    @IBOutlet weak var tabbarview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        topView.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        tabbarview.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        tintview.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
        tintview2.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        tintview3.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        vectorimage.image = UIImage(named: "Vector")
        bellimage.image = UIImage(named: "Icon")
        downStackview.backgroundColor = .clear
        topStackview.backgroundColor = .clear
        labelproperties(label: orderslabel)
        labelproperties(label: currentlabel)
        labelproperties(label: completedlabel)
        labelproperties(label: ongoinglabel)
        gestureForCurrentorder()
        gestureForongoingorder()
        gestureForcompletedorders()
        
        tableview.register(UINib(nibName: "CurrentOrderTableViewCell", bundle: nil), forCellReuseIdentifier: "tablecell")
    }
    
    
    
    //Marks: func label properties
    
    func labelproperties(label:UILabel){
        if label == orderslabel{
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 15)
            label.text = "Orders"
            
        }
        else if label == currentlabel{
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 13)
            label.text = "Current Orders"
            
        }
        else if label == completedlabel{
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 13)
            label.text = "Completed Orders"
        }
        else {
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 13)
            label.text = "On-going Orders"
        }
        
        
    }
    //:MARK: Functions
    
    func gestureForCurrentorder(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        currentlabel.addGestureRecognizer(tap)
        
        currentlabel.isUserInteractionEnabled = true
    }
    
    func gestureForongoingorder(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        ongoinglabel.addGestureRecognizer(tap)
        
        ongoinglabel.isUserInteractionEnabled = true
    }
    func gestureForcompletedorders(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        completedlabel.addGestureRecognizer(tap)
        
        completedlabel.isUserInteractionEnabled = true
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        guard let label = sender.view as? UILabel else { return }
        print("hello world")
        switch label {
        case currentlabel:
            ongoinglabel.font = .boldSystemFont(ofSize: 13)
            currentlabel.font = .boldSystemFont(ofSize: 15)
            completedlabel.font = .boldSystemFont(ofSize: 13)
            
            tintview.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
            tintview2.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            tintview3.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            
            
        case ongoinglabel:
            ongoinglabel.font = .boldSystemFont(ofSize: 15)
            currentlabel.font = .boldSystemFont(ofSize: 13)
            completedlabel.font = .boldSystemFont(ofSize: 13)
            tintview2.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
            tintview.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            tintview3.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            
        case completedlabel:
            ongoinglabel.font = .boldSystemFont(ofSize: 13)
            currentlabel.font = .boldSystemFont(ofSize: 13)
            completedlabel.font = .boldSystemFont(ofSize: 15)
            tintview3.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1.0)
            tintview.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
            tintview2.backgroundColor = UIColor(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        default: currentlabel
        }
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! CurrentOrderTableViewCell
        cell.profile.image = UIImage(named: "profile")
        return cell
    }
    
   
    
        
    }







