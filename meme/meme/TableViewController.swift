//
//  TableViewController.swift
//  meme
//
//  Created by Antarpunit Singh on 2012-04-24.
//  Copyright © 2019 AntarpunitSingh. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  //  @IBOutlet weak var cellImage: UIImageView!
  //  @IBOutlet weak var cellText: UILabel!
    @IBOutlet var table: UITableView!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
    table.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.appDelegate.memes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")!
        let mem = appDelegate.memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
       cell.textLabel?.text = mem.top + mem.bottom
      cell.imageView?.image = mem.memedImage
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        //  let mem = appDelegate.memes[(indexPath as NSIndexPath).row]
        //detailController.mem = mem
        self.navigationController!.pushViewController(detailController, animated: true)
    }
    @IBAction func memeEditor(_ sender: Any) {
       
    }
}
