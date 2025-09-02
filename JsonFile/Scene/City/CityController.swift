//
//  CityController.swift
//  JsonFile
//
//  Created by Shamkhal Guliyev on 21.08.25.
//

import UIKit

class CityController: UIViewController {

    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = country?.countryName ?? ""
    }
}

extension CityController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        country?.cities?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = country?.cities?[indexPath.row].name
        cell?.detailTextLabel?.text = country?.cities?[indexPath.row].museum?.name
        return cell!
    }
}
