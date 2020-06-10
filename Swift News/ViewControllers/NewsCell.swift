//
//  NewsCell.swift
//  Swift News
//
//  Created by Manmeet Swach on 2020-06-09.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    var titleData: String? {
        didSet{
            if let data = titleData{
                self.title.text = data
            }
        }
    }
    
    let title: UILabel = {
        let l = UILabel()
        l.font = UIFont(name: "Helvetica", size: 20)
        l.translatesAutoresizingMaskIntoConstraints = false
        l.textColor = .black
        l.numberOfLines = 0
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        
        addSubview(title)
        title.topAnchor.constraint(equalTo: topAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        title.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
