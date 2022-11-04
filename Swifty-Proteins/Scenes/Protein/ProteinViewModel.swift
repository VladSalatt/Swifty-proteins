// Copyright (c) 2022 Detsky Mir PJSC. All rights reserved.

import RxCocoa
import RxSwift

final class ProteinViewModel {
    private let bag = DisposeBag()

    func transform(input: Input) -> Output {
        return .init()
    }
}

extension ProteinViewModel {
    struct Input {}

    struct Output {}
}
