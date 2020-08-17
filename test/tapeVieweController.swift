//
//  tapeVieweController.swift
//  test
//
//  Created by Айк Шатворян on 16.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit


class TapeVieweController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tapeList: UITableView!
    
    private var tapeItems: [String] = ["Hello world", "Злюка бобэр", "Just DO IT", "Ты сможешь", "Wind of Change"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tapeItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nibs : Array = Bundle.main.loadNibNamed ("TapeItems", owner: self, options: nil)!
        let cell: TapeItems = nibs[0] as! TapeItems
            cell.setTitle(title: tapeItems[indexPath.row])
            return cell
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Загрузка ленты")
    }
}
