//
//  HomeViewController.swift
//  instagram clone
//
//  Created by Mucha Naibei on 16/09/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var tableView: UITableView!
    
    //Variables
    var nameArray: [String] = ["MNaibei", "Sir_farts_alot", "M.u.c.h.a", "Joshua Kimkung", "F.a.n.t.a.s.y", "Its_Shee", "Veon_onsie", "ItsMwachia", "Steve Kimkung", "Ronald Mdawida", "Mumbzy", "Primoz K", "J", "Mungai", "Serah Mucha", "Pasomi Mucha", "Jujumuy", "Uoresu Mucha", "Shiko", "Spatial Collective"]
    
    var colorArr: [UIColor] = [UIColor.red, UIColor.blue, UIColor.purple, UIColor.brown, UIColor.green, UIColor.gray, UIColor.systemPink, UIColor.systemIndigo,UIColor.red, UIColor.blue, UIColor.purple, UIColor.brown, UIColor.green, UIColor.gray, UIColor.systemPink, UIColor.systemIndigo, UIColor.red, UIColor.blue, UIColor.purple, UIColor.brown, UIColor.green, UIColor.gray, UIColor.systemPink, UIColor.systemIndigo]
    
    
    //life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HomeHeaderTVC", bundle: nil), forCellReuseIdentifier: "HomeHeaderTVC")
        tableView.register(UINib(nibName: "HomeFeedsTVC", bundle: nil), forCellReuseIdentifier: "HomeFeedsTVC")
        tableView.register(UINib(nibName: "SearchTVC", bundle: nil), forCellReuseIdentifier: "SearchTVC")
    }
}
    
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        348
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        100
    }
    
    
}
   

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeFeedsTVC") as? HomeFeedsTVC else {
            fatalError("not dequed correctly")
        }
        cell.labelUserName.text = nameArray[indexPath.row]
        cell.imageViewUser.backgroundColor = colorArr[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeHeaderTVC") as? HomeHeaderTVC else {
            fatalError("not dequed correctly")
        }
        
        return cell
        
    }
    
}
    

