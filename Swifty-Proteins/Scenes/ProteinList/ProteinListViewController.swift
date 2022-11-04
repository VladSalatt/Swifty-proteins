
import RxCocoa
import RxSwift
import UIKit

final class ProteinListViewController: UIViewController {
    private let customView = ProteinListView()
    private let viewModel: ProteinListViewModel

    init(viewModel: ProteinListViewModel) {
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

private extension ProteinListViewController {
    func bindViewModel() {
        let output = viewModel.transform(
            input: .init()
        )
    }
    
    func setupBindings() {}
}
