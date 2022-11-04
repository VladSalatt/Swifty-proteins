import RxCocoa
import RxSwift
import UIKit

final class LoginView: UIView {
    private enum Constants {}

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        makeConstraints()
        setupBindings()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
}

extension Reactive where Base: LoginView {}

private extension LoginView {
    func makeConstraints() {}

    func setupBindings() {}
}
