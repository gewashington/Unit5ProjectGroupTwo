//
//  UserPostsTableViewCell.swift
//  Unit5GroupProjectTwo
//
//  Created by C4Q on 2/5/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit
class UserPostsTableViewCell: UITableViewCell {

    lazy var userPostImage: UIImageView = {
        let userPostImage = UIImageView()
        userPostImage.contentMode = .scaleAspectFit
        return userPostImage
    }()
    
    // Number of posts label
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = " Cute cat"
        return label
    }()
    
    lazy var upButton: UIButton = {
        let button = UIButton()
        //button.setTitle("+" , for: .normal)
        button.setImage(#imageLiteral(resourceName: "up"), for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
//    //#of postes calcualted
//    lazy var NumberofPostsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "numberofposts"
//        return label
//    }()
//
    lazy var downButton: UIButton = {
        let button = UIButton()
        //button.setTitle("-" , for: .normal)
        button.setImage(#imageLiteral(resourceName: "down"), for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    //number of upvotes
    lazy var numberofUpvoteLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Number of Upvote:"
        return label
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "PostCell")
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    //        private func setupViews() {
    //            addSubview(userPostImage)
    //            addSubview(descriptionLabel)
    //    }
    private func setupViews() {
        let viewObjects = [descriptionLabel, userPostImage] as! [UIView]
        viewObjects.forEach{addSubview($0)}
        
        userPostImage.snp.makeConstraints { (image) in
            image.height.width.equalTo(self.snp.width).multipliedBy(0.30)
            image.leading.equalTo(self.snp.leading).offset(5)
            image.top.equalTo(self.snp.top).offset(5)
            image.bottom.equalTo(self.snp.bottom).offset(-5)
        }
        descriptionLabel.snp.makeConstraints { (label) in
            label.top.equalTo(5)
            label.leading.equalTo(self.userPostImage.snp.trailing).offset(5)
            label.trailing.equalTo(self.contentView.snp.trailing).offset(-5)
            label.centerY.equalTo(self.contentView.snp.centerY)
        }
//        NumberofPostsLabel.snp.makeConstraints { (label) in
//            label.top.equalTo(self.descriptionLabel.snp.bottom).offset(5)
//            label.leading.equalTo(self.userPostImage.snp.trailing).offset(5)
//            label.trailing.equalTo(self.contentView.snp.trailing).offset(-5)
//        }
    }
    
}
