//
//  ProteinListViewCell.swift
//  Swifty-Proteins
//
//  Created by Vladislav Koshelev on 05.11.2022.
//

import UIKit
import SnapKit

final class ProteinListViewCell: UITableViewCell {
    static let id = "ProteinCell"

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.tintColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(titleLabel)
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with model: Model) {
        titleLabel.text = model.title
    }
}

extension ProteinListViewCell {
    struct Model {
        let title: String
    }
}

private extension ProteinListViewCell {
    func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(
                UIEdgeInsets(
                    top: 16,
                    left: 24,
                    bottom: 16,
                    right: 24
                )
            )
        }
    }
}
