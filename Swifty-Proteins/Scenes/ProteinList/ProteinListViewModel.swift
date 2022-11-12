import RxCocoa
import RxSwift
import RxDataSources

final class ProteinListViewModel {
    private let bag = DisposeBag()

    func transform(input: Input) -> Output {
        let ligands = input.viewWillAppear
            .compactMap { _ -> String? in
                do {
                    return try String(contentsOfFile: F.ligandsTxt.path)
                } catch {
                    return nil
                }
            }
            .map { $0.split(separator: "\n") }
            .compactMap { $0.map { String.init($0) }}
        
        let properties = ligands
            .map([Properties].init)
            .asDriver(onErrorJustReturn: [])

        return .init(
            properties: properties
        )
    }
}

extension ProteinListViewModel {
    struct Input {
        let viewWillAppear: Signal<Void>
    }

    struct Output {
        let properties: Driver<[Properties]>
    }
    
    struct Properties {
        let title: String
    }
}

private extension Array where Element == ProteinListViewModel.Properties {
    init(_ items: [String]) {
        self = items.map { Element.init(title: $0) }
    }
}

private extension ProteinListViewModel.Properties {
    init(_ ligand: String) {
        self.init(title: ligand)
    }
}
