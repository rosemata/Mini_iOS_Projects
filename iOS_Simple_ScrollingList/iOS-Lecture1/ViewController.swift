//
//  ViewController.swift
//  iOS-Lecture1
//
//  Created by Roselle Mata on 9/25/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var customTableView: UITableView!
    
    static let cellIdentifier = "NameCell"
    
    var names = ["Roselle", "Tejada", "Mata"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customTableView.dataSource = self
        customTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                    ViewController.cellIdentifier, for: indexPath) as! CustomTableViewCell
        let name = names[indexPath.row]
        cell.nameLabel.text = name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = names[indexPath.row]
        print(name)
    }

}

