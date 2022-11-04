
import RxCocoa
import RxSwift
import UIKit

final class ProteinListView: UIView {
    private enum Constants {}

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        makeConstraints()
        setupBindings()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
}

extension Reactive where Base: ProteinListView {}

private extension ProteinListView {
    func makeConstraints() {}

    func setupBindings() {}
}
