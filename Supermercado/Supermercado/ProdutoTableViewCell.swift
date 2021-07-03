//
//  ProdutoTableViewCell.swift
//  Supermercado
//
//  Created by Guilherme Chilon on 29/06/21.
//

import UIKit

class ProdutoTableViewCell: UITableViewCell {
  
  private lazy var container : UIView = {
    let view = UIView()
    view.backgroundColor = .lightGray
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  private lazy var mainStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .vertical
    stackView.spacing = 4
    stackView.distribution = .fillProportionally
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private lazy var nome: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .boldSystemFont(ofSize: 20)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var firstStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private lazy var valor: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var marca: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var secondStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private lazy var quantidade: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var referencia: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var thirdStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .horizontal
    stackView.spacing = 16
    stackView.distribution = .fillEqually
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private lazy var desconto: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.backgroundColor = .green
    label.layer.cornerRadius = label.frame.height / 2
    label.clipsToBounds = true
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var promocao: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    label.backgroundColor = .orange
    label.layer.cornerRadius = label.frame.height / 2
    label.clipsToBounds = true
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupViews()
    setupConstraints()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    setupViews()
    setupConstraints()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  private func setupViews() {
    
    addSubview(container)
    container.addSubview(mainStackView)
    
    mainStackView.addArrangedSubview(nome)
    mainStackView.addArrangedSubview(firstStackView)
    mainStackView.addArrangedSubview(secondStackView)
    mainStackView.addArrangedSubview(thirdStackView)
    
    firstStackView.addArrangedSubview(valor)
    firstStackView.addArrangedSubview(marca)
    
    secondStackView.addArrangedSubview(quantidade)
    secondStackView.addArrangedSubview(referencia)
    
    thirdStackView.addArrangedSubview(desconto)
    thirdStackView.addArrangedSubview(promocao)
    contentView.backgroundColor = .white
  }
  
  private func setupConstraints() {
    
    container.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
    container.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
    container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
    
    mainStackView.topAnchor.constraint(equalTo: container.topAnchor, constant: 8).isActive = true
    mainStackView.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -8).isActive = true
    mainStackView.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8).isActive = true
    mainStackView.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8).isActive = true
    layoutIfNeeded()
  }
  
  var produto: Produto? {
    didSet {
      setupCell()
    }
  }
  
  private func setupCell() {
    
    if let produto = produto {
      nome.text = produto.nome
      valor.text = "Valor: " + produto.valor
      marca.text = "Marca: " + produto.marca
      quantidade.text = "Quantidade: " + produto.quantidade
      referencia.text = "Ref: " + produto.referencia
      desconto.text = produto.desconto + " de desconto"
      promocao.text = produto.promocao
    }
  }
}
