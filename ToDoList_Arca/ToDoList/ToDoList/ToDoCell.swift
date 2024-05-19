//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Anthony Arca on 5/2/24.
//  Copyright © 2024 Anthony Arca Rutgers University. All rights reserved.
//  On my honor, I have neither received nor given any unauthorized assistance on this assignment.
//  Anthony Arca

import UIKit

protocol ToDoCellDelegate: AnyObject{
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    weak var delegate: ToDoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
}
