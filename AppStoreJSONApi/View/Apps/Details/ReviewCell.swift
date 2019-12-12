//
//  ReviewCell.swift
//  AppStoreJSONApi
//
//  Created by kiras on 2019/12/11.
//  Copyright © 2019 ameyo. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Reviews Title", font: .boldSystemFont(ofSize: 16), numberOfLines: 1)
    
    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16))
    
    let starsLabel = UILabel(text: "Stars", font: .systemFont(ofSize: 14))
    
    let bodyLabel = UILabel(text: "Review body\nReview body\nReview body\n", font: .systemFont(ofSize: 16), numberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.9423103929, green: 0.9410001636, blue: 0.9745038152, alpha: 1)
        
        layer.cornerRadius = 16
        
        clipsToBounds = true

        let stackView = VerticalStackView(arrangedSubview: [
            UIStackView(arrangedSubviews: [
                titleLabel, authorLabel
                ], customSpacing: 8),
            starsLabel,
            bodyLabel
            ], spacing: 12)
        
        titleLabel.setContentCompressionResistancePriority(.init(0), for: .horizontal)
        authorLabel.textAlignment = .right
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
