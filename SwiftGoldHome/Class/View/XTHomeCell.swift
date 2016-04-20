//
//  XTHomeCell.swift
//  SwiftGoldHome
//
//  Created by 胡春源 on 16/4/18.
//  Copyright © 2016年 胡春源. All rights reserved.
//

import UIKit



class XTHomeCell: UITableViewCell {

    @IBOutlet weak var entryimageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setEntryModel(entry:EntryModel){
        entryimageView.sd_setImageWithURL(entry.screenshot)
        avatarImage.sd_setImageWithURL(entry.userAvatar)
        titleLabel.text = entry.title
        detailLabel.text = entry.content
    }
 
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
