//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Ozlem Akalin on 02/01/15.
//  Copyright (c) 2015 Ozlem Akalin. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell{
    @IBOutlet var tableTitle : UILabel!
    @IBOutlet var tableSubtitle : UILabel!
    @IBOutlet var tableImageView : UIImageView!
    @IBOutlet weak var _activity: UIActivityIndicatorView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        // Initialization code
    }
    
    func setup(){
        self.tableImageView.layer.cornerRadius=self.tableImageView.frame.size.height*0.5
        self.tableImageView.clipsToBounds=true;
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}
