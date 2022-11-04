import RxCocoa
import RxSwift

final class ProteinListViewModel {
    private let bag = DisposeBag()

    func transform(input: Input) -> Output {
//        String(contentsOf: F.ligandsTxt.url) - список лигандов
        return .init()
    }
}

extension ProteinListViewModel {
    struct Input {}

    struct Output {}
}
