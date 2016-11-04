//
//  VideoController.swift
//  colleapp
//
//  Created by Ashok Machineni on 11/3/16.
//  Copyright © 2016 Ashok Machineni. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var titleLbl: UILabel!
    private var _partyRock: PartyRock!
    var partyRock: PartyRock {
        get{
            return _partyRock
        }
    set{
        _partyRock = newValue
        
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
