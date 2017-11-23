//
//  AdjTableViewController.swift
//  EngDict
//
//  Created by SMK IDN MI on 11/22/17.
//  Copyright © 2017 Djoendhie. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class AdjTableViewController: UITableViewController {
    var judSelected:String?
    var katSelected:String?
    var iSISelected:String?
    var iSiSelected:String?
    
    
    var nampungId : String? = nil
    var arraysiswa = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        print("id + " + nampungId!)
        
        let params = ["id_kamus" : nampungId]
        let url = "http://localhost/Kamus/index.php/api/getadj"
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler:
            { (response) in
                
                
                if response.result.isSuccess {
                    //kalau response suces kita ambil json
                    let json = JSON(response.result.value as Any)
                    print(json)
                    //get jsonaray dari json arrayq
                    self.arraysiswa = json["data"].arrayObject as! [[String : String]]
                    //check d log
                    //check jumlah array
                    if (self.arraysiswa.count > 0){
                        
                        //refresh tableview
                        self.tableView.reloadData()
                    }
                }
                else{
                    
                    print("error server")
                    
                }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arraysiswa.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellAdj", for: indexPath) as! AdjTableViewCell
        
        var serverid = arraysiswa[indexPath.row]
        
        var id = serverid["id_adj"]
        let eng = serverid["eng"]
        let indo = serverid["indo"]
        let no = serverid["id_idj"]
        //print judul
        
        cell.labelEng4.text = eng
        cell.labelIndo4.text = indo
        cell.labelNo4.text = no
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Row \(indexPath.row)selected")
        
        let task = arraysiswa[indexPath.row]
        judSelected = task["id_adj"] as! String
        katSelected = task["eng"] as! String
        iSISelected = task["indo"] as! String
        iSiSelected = task["no"] as! String
        
        
        
        
        //        performSegue(withIdentifier: "passIsi", sender: self)
    }
    
}
