//
//  ViewController.swift
//  colleapp
//
//  Created by Ashok Machineni on 11/3/16.
//  Copyright © 2016 Ashok Machineni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1  = PartyRock(imageURL: "https://koenig-media.raywenderlich.com/uploads/2014/07/BeautifulTriangle.png", videoURL: "<iframe width=\"100%\" height=\"315\" src=\"http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "Ashok is here")
         let p2  = PartyRock(imageURL: "https://koenig-media.raywenderlich.com/uploads/2014/07/BeautifulTriangle.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DsESGLxvqWs\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "As2hok is here")
         let p3  = PartyRock(imageURL: "https://koenig-media.raywenderlich.com/uploads/2014/07/BeautifulTriangle.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DsESGLxvqWs\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "A4shok is here")
         let p4  = PartyRock(imageURL: "https://koenig-media.raywenderlich.com/uploads/2014/07/BeautifulTriangle.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DsESGLxvqWs\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "A3shok is here")
         let p5  = PartyRock(imageURL: "https://koenig-media.raywenderlich.com/uploads/2014/07/BeautifulTriangle.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DsESGLxvqWs\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "5Ashok is here")
       partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
       performSegue(withIdentifier: "VideoController", sender: partyRock)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinations = segue.destination as? VideoController{
            if let party = sender as? PartyRock{
              destinations.partyRock = party
                
            }
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

