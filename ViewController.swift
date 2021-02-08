//
//  ViewController.swift
//  CarrotMarket2
//
//  Created by 용상호 on 2021/02/06.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? Listcell {
            
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    
    
    
   @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // tableView의 delegate를 지금 이 ViewController로!!
        tableView.delegate = self
        tableView.dataSource = self
    }



}

class Listcell: UITableViewCell{

    
}
