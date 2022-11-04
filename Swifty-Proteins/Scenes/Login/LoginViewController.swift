import RxCocoa
import RxSwift
import UIKit

// TODO: 1. Сделать кнопку FaceID
// TODO: 2. Авторизация с помощью FaceID
// TODO: 3. Fail - вылезает попам с ошибкой, Success - юзер проходит дальше
// TODO: 4. Если телефон не совместим, кнопка должна быть скрыта (Показывать текстфилд с паролем?)
// TODO: 5. Показывать этот экран при каждом показе приложения (мб переместить в didBecomeActive)


final class LoginViewController: UIViewController {
    private let customView = LoginView()
    private let viewModel: LoginViewModel

    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        setupBindings()
    }
}

private extension LoginViewController {
    func bindViewModel() {
        let output = viewModel.transform(
            input: .init()
        )
    }
    
    func setupBindings() {}
}
