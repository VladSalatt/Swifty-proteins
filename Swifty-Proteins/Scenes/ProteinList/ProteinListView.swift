import RxCocoa
import RxSwift
import RxDataSources
import UIKit

final class ProteinListView: UIView {
    fileprivate lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = .white
        return tv
    }()
    
    fileprivate lazy var dataSource = RxTableViewSectionedReloadDataSource<SectionModel<Void, ProteinListViewCell.Model>>(
        configureCell: { _, tableView, indexPath, model -> UITableViewCell in
            tableView.register(ProteinListViewCell.self, forCellReuseIdentifier: ProteinListViewCell.id)
            guard
                let cell = tableView.dequeueReusableCell(
                    withIdentifier: ProteinListViewCell.id,
                    for: indexPath
                ) as? ProteinListViewCell
            else { return UITableViewCell() }
            cell.configure(with: .init(title: model.title))
            cell.selectionStyle = .none
            return cell
        }
    )

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(tableView)
        
        makeConstraints()
        setupBindings()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
}

extension Reactive where Base: ProteinListView {
    var items: (Observable<[SectionModel<Void, ProteinListViewCell.Model>]>) -> Disposable {
        base.tableView.rx.items(dataSource: base.dataSource)
    }
}

private extension ProteinListView {
    func makeConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide)
        }
    }

    func setupBindings() {}
}
