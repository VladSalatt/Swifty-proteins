// Copyright (c) 2022 Detsky Mir PJSC. All rights reserved.

import RxCocoa
import RxSwift
import UIKit

final class ProteinView: UIView {
    private enum Constants {}

    override init(frame: CGRect) {
        super.init(frame: frame)

        makeConstraints()
        setupBindings()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
}

extension Reactive where Base: ProteinView {}

private extension ProteinView {
    func makeConstraints() {}

    func setupBindings() {}
}
