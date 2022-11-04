import RxCocoa
import RxSwift
import SnapKit
import UIKit

final class LoginView: UIView {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(button)
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
    func makeConstraints() {
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    func setupBindings() {}
}
