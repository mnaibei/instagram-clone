//
//  SearchViewController.swift
//  instagram clone
//
//  Created by Mucha Naibei on 28/09/2022.
//

import UIKit

class SearchViewController: UIViewController {

    //outlet
    
    @IBOutlet weak var tableViewSearch: UITableView!
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewSearch.register(UINib(nibName: "SearchTVC", bundle: nil), forCellReuseIdentifier: "SearchTVC")
    }

}

extension SearchViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        348
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        80
    }
}

extension SearchViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC") as? SearchTVC else {
            fatalError("not dequed correctly")
        }
        
        return cell
    }
}
