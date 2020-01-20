//
//  Created by Tapash Majumder on 1/20/20.
//  Copyright © 2020 Iterable. All rights reserved.
//

import Foundation

import IterableSDK

extension MainViewController {
    /// To filter by messages which, set the `filter` property of view delegate.
    /// In this example, we show how to show only messages that have "messageType" set to "promotional" or messageType set to "transactional".
    @IBAction private func onFilterByMessageTypeTapped() {
        // <ignore -- data loading>
        loadDataset(number: 1)
        // </ignore -- data loading>

        let viewController = IterableInboxNavigationViewController()
        viewController.viewDelegate = FilterByMessageTypeInboxViewDelegate()
        present(viewController, animated: true)
    }
}

public class FilterByMessageTypeInboxViewDelegate: IterableInboxViewControllerViewDelegate {
    public required init() {
    }

    public let filter = IterableInboxViewController.DefaultFilter.usingCustomPayloadMessageType(in: "promotional", "transactional")
}
