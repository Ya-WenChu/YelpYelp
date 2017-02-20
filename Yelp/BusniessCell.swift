//
//  BusniessCell.swift
//  Yelp
//
//  Created by Yawen on 19/2/2017.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusniessCell: UITableViewCell {
    @IBOutlet weak var thumbimageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingimageView: UIImageView!
    @IBOutlet weak var ratingcountLabel: UILabel!
    @IBOutlet weak var categroyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    var business: Business!{
        didSet{
            nameLabel.text=business.name
            thumbimageView.setImageWith(business.imageURL!)
            categroyLabel.text = business.categories
            addressLabel.text=business.address
            ratingcountLabel.text="\(business.reviewCount!)Reviews"
            ratingimageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text=business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbimageView.layer.cornerRadius = 5
        thumbimageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth=nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth=nameLabel.frame.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
