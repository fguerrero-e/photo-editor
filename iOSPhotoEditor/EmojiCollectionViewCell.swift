//
//  EmojiCollectionViewCell.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 4/30/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

class EmojiCollectionViewCell: UICollectionViewCell {

    let emojiLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        emojiLabel.translatesAutoresizingMaskIntoConstraints = false
        emojiLabel.textAlignment = .center
        emojiLabel.font = .systemFont(ofSize: 60)
        contentView.addSubview(emojiLabel)
        NSLayoutConstraint.activate([
            emojiLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            emojiLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
}
