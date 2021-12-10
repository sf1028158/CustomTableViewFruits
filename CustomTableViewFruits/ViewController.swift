//
//  ViewController.swift
//  CustomTableViewFruits
//
//  Created by Fang Shao on 12/7/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let fruits=["apple","orange","banana","avocado","watermelon","pear","durian","honeydew","kiwi"]

    

    

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named:fruits[indexPath.row])
        cell.lblImage.text = fruits[indexPath.row]
        return cell
    }

}

