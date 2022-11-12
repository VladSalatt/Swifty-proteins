import RxCocoa
import RxSwift
import RxAppState
import RxDataSources
import UIKit

final class ProteinListViewController: UIViewController {
    private let customView = ProteinListView()
    private let viewModel: ProteinListViewModel
    private let bag = DisposeBag()

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
            input: .init(
                viewWillAppear: rx.viewWillAppear.mapToVoid().asSignal(onErrorJustReturn: ())
            )
        )
        
        output.properties
            .map([ProteinListViewCell.Model].init)
            .map([SectionModel<Void, ProteinListViewCell.Model>].init)
            .drive(customView.rx.items)
            .disposed(by: bag)
    }
    
    func setupBindings() {}
}

private extension Array where Element == SectionModel<Void, ProteinListViewCell.Model> {
    init(_ items: [ProteinListViewCell.Model]) {
        self = [
            SectionModel(model: (), items: items)
        ]
    }
}

private extension Array where Element == ProteinListViewCell.Model {
    init(_ items: [ProteinListViewModel.Properties]) {
        self = items.map { Element($0) }
    }
}

private extension ProteinListViewCell.Model {
    init(_ props: ProteinListViewModel.Properties) {
        self.init(title: props.title)
    }
}
