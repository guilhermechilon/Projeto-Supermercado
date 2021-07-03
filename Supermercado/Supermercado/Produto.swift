//
//  Produto.swift
//  Supermercado
//
//  Created by Guilherme Chilon on 29/06/21.
//

import Foundation

struct Produto {
    let nome: String
    let valor: String
    let quantidade: String
    let marca: String
    let referencia: String
    let desconto: String
    let promocao: String
    
    init(nome: String, valor: String, quantidade: String, marca: String, referencia: String, desconto: String, promocao: String) {
        self.nome = nome
        self.valor = valor
        self.quantidade = quantidade
        self.marca = marca
        self.referencia = referencia
        self.desconto = desconto
        self.promocao = promocao
    }
}

extension Produto {
  
  static func lista() -> [Produto] {
    return [Produto(nome: "Máscara Facial Adulto desc", valor: "R$3,50", quantidade: "15", marca: "Aisence", referencia: "8809071360837", desconto: "1%", promocao: "Compre 5 pague 4"),
            Produto(nome: "Secador de cabelo", valor: "R$199,99", quantidade: "10", marca: "New Smart", referencia: "7896116114211", desconto: "6%", promocao: "20% OFF a vista"),
            Produto(nome: "Aparador de Pelos Bivolt", valor: "R$119,89", quantidade: "60", marca: "Mondial", referencia: "7908259503590", desconto: "6%", promocao: "12x cartão sem juros"),
            Produto(nome: "Escova Elétrica - Vitality Precision", valor: "R$113,74", quantidade: "10", marca: "Oral-B", referencia: "4210201038511", desconto: "5%", promocao: "6x cartão sem juros"),
            Produto(nome: "Creme Dental - 102g", valor: "R$11,63", quantidade: "120", marca: "Oral-B", referencia: "7500435147194", desconto: "10%", promocao: "Compre 5 pague 4"),
            Produto(nome: "Protetor Solar FP30 - 125ml", valor: "R$35,69", quantidade: "200", marca: "Nivea", referencia: "4005808555321", desconto: "1%", promocao: "Compre 2 e ganhe bronzeador"),]
  }
}
