//
//  Rx+Ext.swift
//  Swifty-Proteins
//
//  Created by Vladislav Koshelev on 12.11.2022.
//

import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
    func mapToVoid() -> Observable<Void> {
        map { _ in }
    }
}
