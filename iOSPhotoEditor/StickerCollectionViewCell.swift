//
//  StickerCollectionViewCell.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 4/23/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

class StickerCollectionViewCell: UICollectionViewCell {

    let stickerImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        backgroundColor = .clear
        stickerImage.translatesAutoresizingMaskIntoConstraints = false
        stickerImage.contentMode = .scaleAspectFit
        stickerImage.isUserInteractionEnabled = false
        contentView.addSubview(stickerImage)
        NSLayoutConstraint.activate([
            stickerImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stickerImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stickerImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            stickerImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
