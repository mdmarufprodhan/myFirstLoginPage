//
//  VediolListViewController.swift
//  tableviewpractice
//
//  Created by Md Maruf Prodhan on 1/1/20.
//  Copyright © 2020 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class VediolListViewController: UIViewController {
     @IBOutlet weak var tableView: UITableView!
    var vedios : [Vedio] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vedios = createArray()
    
        
    }
    func createArray() -> [Vedio] {
        
        var tempVedios: [Vedio] = []
        let vedio1 = Vedio(image: UIImage(named: "yamaha bike1")!, title: "yamaha bike1")
        let vedio2 = Vedio(image: UIImage(named: "yamaha-bike2")!, title: "yamaha-bike2")
        let vedio3 = Vedio(image: UIImage(named: "yamaha-fz2")!, title: "yamaha-fz2")
        let vedio4 = Vedio(image: UIImage(named: "yamaha-yzf-3")!, title: "yamaha-yzf-3")
        
        tempVedios.append(vedio1)
        tempVedios.append(vedio2)
        tempVedios.append(vedio3)
        tempVedios.append(vedio4)
        
        return tempVedios
    }

}
extension VediolListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vedios.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let vedio = vedios[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "VedioCell") as! VedioCell
    cell.setVideo(vedio: vedio)
        return  cell
    }
    
}

