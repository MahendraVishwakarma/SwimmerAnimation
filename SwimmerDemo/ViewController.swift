//
//  ViewController.swift
//  SwimmerDemo
//
//  Created by Mahendra Vishwakarma on 03/09/20.
//  Copyright © 2020 Mahendra Vishwakarma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var swimmerView: UIView!
    
    @IBOutlet weak var tableview: UITableView!
    var isStopped = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupUI()
    }
    private func setupUI() {
        tableview.register(UINib(nibName: String(describing: SwimmerCell.self), bundle: .main), forCellReuseIdentifier: String(describing: SwimmerCell.self))
    }

    @IBOutlet weak var swimmerLabel: UILabel!
    
    @IBAction func stopAnimation(_ sender: Any) {
        //swimmerView.stopAnimatiom()
        //swimmerLabel.stopAnimatiom()
        isStopped = true
        tableview.reloadData()
    }
    @IBAction func btnStart(_ sender: Any) {
        //swimmerView.startAnimation()
        //swimmerLabel.startAnimation()
        
        isStopped = false
        tableview.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SwimmerCell.self), for: indexPath) as? SwimmerCell else {
            return UITableViewCell()
        }
        if(isStopped) {
            cell.setdata()
        }
        return cell
    }
    
}
