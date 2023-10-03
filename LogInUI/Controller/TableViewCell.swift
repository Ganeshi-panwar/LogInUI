//
//  TableViewCell.swift
//  LogInUI
//
//  Created by Mohit Mali on 12/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {
//    var array1 = ["aaa","bbb","ccc"]
//    var array2 = [ "ccc", "ddd","eee"]
//    var array3 = UIImage(imageLiteralResourceName: "a")
   // var array4 = [UIImage(imageLiteralResourceName: String)]

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab1: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
