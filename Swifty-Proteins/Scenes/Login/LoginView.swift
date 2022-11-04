import RxCocoa
import RxSwift
import UIKit

final class LoginView: UIView {
    private lazy var button: UIButton = {
       let button = UIButton()
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
            
        
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
