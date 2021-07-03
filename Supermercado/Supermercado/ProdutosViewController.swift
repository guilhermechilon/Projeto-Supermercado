//
//  ProdutosViewController.swift
//  Supermercado
//
//  Created by Guilherme Chilon on 29/06/21.
//

import UIKit

class ProdutosViewController: UIViewController {
  
  private lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.text = "Lista de Produtos"
    label.textColor = .black
    label.font = .boldSystemFont(ofSize: 30)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  private lazy var tableView: UITableView = {
    let tableView = UITableView()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.backgroundColor = .white
    tableView.rowHeight = 160
    tableView.separatorStyle = .none
    tableView.showsHorizontalScrollIndicator = false
    tableView.contentSize = CGSize(width: self.view.frame.width - 16 , height: 160)
    tableView.register(ProdutoTableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  private let produtos = Produto.lista()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupConstraints()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    view.backgroundColor = .white
  }
  
  private func setupViews() {
    
    view.addSubview(titleLabel)
    view.addSubview(tableView)
    view.backgroundColor = .white
    tableView.reloadData()
  }
  
  private func setupConstraints() {
    
    titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 72).isActive = true
    titleLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
    titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16).isActive = true
    
    tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    tableView.layoutIfNeeded()
  }
}

extension ProdutosViewController : UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return produtos.count
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 160
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProdutoTableViewCell
    cell!.produto = produtos[indexPath.row]
    return cell!
  }
}

