//
//  ThreeCell.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/20.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit
import SnapKit
import SDWebImage

class ThreeCell: UITableViewCell {

    var model:ThreeModel!{
        didSet{
            nameLabel.text = model.creator!.nick! + model.city!
            let str = model.creator!.portrait
            picImgView.sd_setImage(with: URL.init(string: str!), completed: nil)
            
        }
    }
    
    
    lazy var nameLabel:UILabel = {
        let la = UILabel.init()
        la.textAlignment = .center
        return la;
    }()
    
    lazy var picImgView:UIImageView = {
        let imgView = UIImageView.init()
        return imgView;
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        addCons()
    }
    
    
    func setupUI(){
        contentView.addSubview(nameLabel)
        contentView.addSubview(picImgView)
        
    }
    
    func addCons(){
        nameLabel.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(contentView.snp.left).offset(10)
            make.rightMargin.equalTo(contentView.snp.right).offset(-10)
            make.topMargin.equalTo(contentView.snp.top).offset(10)
            make.height.equalTo(50)
        }
        picImgView.snp.makeConstraints { (make) in
            make.center.equalTo(contentView.snp.center)
            make.height.width.equalTo(120)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
