//
//  FirstViewController.swift
//  PetTableViewApp
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var DogArray = [Dog]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        return dog()
        
    }
    
    func dog() {
        
        let athena = Dog(name: "Athena", age:"5 Years", imageName:"Athena", breed:"Chihuahua", size:"Small", gender:"Female")
        self.DogArray.append(athena)
        
        let audi = Dog(name: "Audi", age: "8 Months", imageName: "Audi", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(audi)
        
        let basil = Dog(name: "Basil", age: "6 Years", imageName: "Basil", breed: "Crossbreed", size: "Large", gender: "Male")
        self.DogArray.append(basil)
        
        let beaufort = Dog(name: "Beaufort", age: "6 Years", imageName: "Beaufort", breed: "Hound", size: "Large", gender: "Male")
        self.DogArray.append(beaufort)
        
        let binkers = Dog(name: "Binkers", age: "9 Years", imageName: "C", breed: "Chihuahua", size: "Small", gender: "Male")
        self.DogArray.append(binkers)
        
        let birolodo = Dog(name: "Birolodo", age: "4 Years", imageName: "B", breed: "Crossbreed", size: "Small", gender: "Male")
        self.DogArray.append(birolodo)
        
        let calvin = Dog(name: "Calvin", age: "7 Years", imageName: "Calvin", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(calvin)
        
        let caspian = Dog(name: "Caspian", age: "1 Year", imageName: "Caspian", breed: "Pit Bull", size: "Large", gender: "Large")
        self.DogArray.append(caspian)
        
        let cher = Dog(name: "Cher", age: "3 Years", imageName: "Cher", breed: "Crossbreed", size: "Small", gender: "Female")
        self.DogArray.append(cher)
        
        let cora = Dog(name: "Cora", age: "5 Years", imageName: "Cora", breed: "Pit Bull", size: "Large", gender: "Female")
        self.DogArray.append(cora)
        
        let daisy = Dog(name: "Daisy", age: "4 Years", imageName: "Daisy", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(daisy)
        
        let flick = Dog(name: "Flick", age: "2 Years", imageName: "Flick", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(flick)
        
        let froggers = Dog(name: "Froggers", age: "2 Years", imageName: "Froggers", breed: "Crossbreed", size: "Large", gender: "Male")
        self.DogArray.append(froggers)
        
        let hendrick = Dog(name: "Hendrick", age: "2 Years", imageName: "Hendrick", breed: "Crossbreed", size: "Medium", gender: "Male")
        self.DogArray.append(hendrick)
        
        let jude = Dog(name: "Jude", age: "1 Year", imageName: "Jude1", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(jude)
        
        let kellie = Dog(name: "Kellie", age: "1 Year", imageName: "Kellie", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(kellie)
        
        let kevin = Dog(name: "Kevin", age: "3 Years", imageName: "Kevin", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(kevin)
        
        let lady = Dog(name: "Lady", age: "2 Years", imageName: "Lady", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(lady)
        
        let liesl = Dog(name: "Liesl", age: "1 Year", imageName: "Liesl", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(liesl)
        
        let lucy = Dog(name: "Lucy", age: "2 Years", imageName: "Lucy", breed: "Crossbreed", size: "Medium", gender: "Female")
        self.DogArray.append(lucy)
      
    //MARK: Table view data source 
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.DogArray.count
       
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogsTableViewCell
        
        let DogTest = self.DogArray[indexPath.row]
        
        cell.dogNameLabel.text = DogTest.name
        
        cell.dogImageView.image = UIImage(named: DogTest.imageName)
        
        
        return cell
        
    }

}

