//
//  GenericTableViewDataSource.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit

final class GenericTableViewDataSource<V: BaseTableViewCell<T> , T: ModelRepresentable>: NSObject, UITableViewDataSource {
    typealias CellConfiguration = (V, T) -> V
    
    private let configureCell: CellConfiguration
    private var searchResults: [T] = []
    private var models: [T]
    private var isSearchActive: Bool = false
    
    init(models: [T], configureCell: @escaping CellConfiguration) {
        self.models = models
        self.configureCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearchActive ? searchResults.count : models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: V = tableView.dequeueReusableCell(forIndexPath: indexPath)
        let model = getModel(at: indexPath)
        return self.configureCell(cell, model)
    }
    
    private func getModel(at indexPath: IndexPath) -> T {
        return isSearchActive ? searchResults[indexPath.item] : models[indexPath.item]
    }
  
}

