// Copyright (c) 2022 Detsky Mir PJSC. All rights reserved.

import RxCocoa
import RxSwift
import UIKit

final class ProteinViewController: UIViewController {

    private let viewModel: ProteinViewModel

    init(viewModel: ProteinViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        setupBindings()
    }
}

private extension ProteinViewController {
    func bindViewModel() {
        let output = viewModel.transform(
            input: .init()
        )
    }
    
    func setupBindings() {}
}
