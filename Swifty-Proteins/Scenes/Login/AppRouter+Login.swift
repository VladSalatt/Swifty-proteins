//
//  AppRouter+Login.swift
//  Swifty-Proteins
//
//  Created by Vladislav Koshelev on 04.11.2022.
//

import Foundation
import AppRouter

extension AppRouter {
    static func openLogin() {
        do {
            try LoginViewController
                .presenter()
                .from { .init(viewModel: .init()) }
                .configure { $0.modalPresentationStyle = .fullScreen }
                .present(animated: true)
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }
}
