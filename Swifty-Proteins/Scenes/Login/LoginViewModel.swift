import RxCocoa
import RxSwift

final class LoginViewModel {
    private let bag = DisposeBag()

    func transform(input: Input) -> Output {
        return .init()
    }
}

extension LoginViewModel {
    struct Input {}

    struct Output {}
}
