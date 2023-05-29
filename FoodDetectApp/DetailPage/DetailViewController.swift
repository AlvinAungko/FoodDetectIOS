//
//  DetailViewController.swift
//  FoodDetectApp
//
//  Created by Aung Ko Ko on 24/05/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInset = .zero
        tableView.separatorStyle = .none
        tableView.registerCells(
            str: [
                DetailFoodStatusInfoCell.className, DetailInfoCell.className
            ]
        )
    }
}

extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: DetailFoodStatusInfoCell.self), for: indexPath) as? DetailFoodStatusInfoCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}
