//
//  FirstViewController.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dogsArray = [Dogs]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        return dog()
        
    }
    
    func dog() {
        
        let athena = Dogs(name: "Athena", age:"5 Years", imageName:"Athena", breed:"Chihuahua", size:"Small", gender:"Female")
        self.dogsArray.append(athena)
        
        let audi = Dogs(name: "Audi", age: "8 Months", imageName: "Audi", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.dogsArray.append(audi)
        
        let basil = Dogs(name: "Basil", age: "6 Years", imageName: "Basil", breed: "Crossbreed", size: "Large", gender: "Male")
        self.dogsArray.append(basil)
        
        let beaufort = Dogs(name: "Beaufort", age: "6 Years", imageName: "Beaufort", breed: "Hound", size: "Large", gender: "Male")
        self.dogsArray.append(beaufort)
        
        let binkers = Dogs(name: "Binkers", age: "9 Years", imageName: "C", breed: "Chihuahua", size: "Small", gender: "Male")
        self.dogsArray.append(binkers)
        
        let birolodo = Dogs(name: "Birolodo", age: "4 Years", imageName: "B", breed: "Crossbreed", size: "Small", gender: "Male")
        self.dogsArray.append(birolodo)
        
        let calvin = Dogs(name: "Calvin", age: "7 Years", imageName: "Calvin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.dogsArray.append(calvin)
        
        let caspian = Dogs(name: "Caspian", age: "1 Year", imageName: "Caspian", breed: "Pit Bull", size: "Large", gender: "Large")
        self.dogsArray.append(caspian)
        
        let cher = Dogs(name: "Cher", age: "3 Years", imageName: "Cher", breed: "Crossbreed", size: "Small", gender: "Female")
        self.dogsArray.append(cher)
        
        let cora = Dogs(name: "Cora", age: "5 Years", imageName: "Cora", breed: "Pit Bull", size: "Large", gender: "Female")
        self.dogsArray.append(cora)
      
    //MARK: Table view data source 
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dogsArray.count
       
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogsTableViewCell
        
        let dogsTest = self.dogsArray[indexPath.row]
        
        cell.dogNameLabel.text = dogsTest.name
        
        cell.dogImageView.image = UIImage(named: dogsTest.imageName)
        
        
        return cell
        
    }

}

