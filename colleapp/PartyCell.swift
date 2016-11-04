//
//  PartyCell.swift
//  colleapp
//
//  Created by Ashok Machineni on 11/3/16.
//  Copyright © 2016 Ashok Machineni. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet var videoImage: UIImageView!
    @IBOutlet var videoTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
                
            } catch {
                
            }
        }
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
