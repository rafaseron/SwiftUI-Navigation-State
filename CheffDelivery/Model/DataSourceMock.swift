//
//  DataSourceMock.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 25/04/24.
//

import Foundation

let listaCategorias: [Categoria] = [
    Categoria(id: 1, label: "Restaurantes", image: "hamburguer"),
    Categoria(id: 2, label: "Farmácia", image: "farmacia"),
    Categoria(id: 3, label: "Descontos", image: "descontos"),
    Categoria(id: 4, label: "Gourmet", image: "gourmet"),
    Categoria(id: 5, label: "Mercado", image: "mercado"),
    Categoria(id: 6, label: "Pet", image: "petshop"),
    Categoria(id: 7, label: "Bebidas", image: "bebidas")
]

let listaDeLojas: [Loja] = [
    Loja(id: 1, label: "Açaí Panda", logoImage: "acai-panda-logo", headerImage: "acai-panda-header", address: "Rua Principal, 123 São Paulo SP", stars: 4),
    Loja(id: 2, label: "Padaria", logoImage: "bakery-logo", headerImage: "bakery-header", address: "Rua Principal, 123 São Paulo SP", stars: 4),
    Loja(id: 3, label: "Carbron", logoImage: "carbron-logo", headerImage: "carbron-header", address: "Rua Principal, 123 São Paulo SP", stars: 4),
    Loja(id: 4, label: "Food Court", logoImage: "food-court-logo", headerImage: "food-court-header", address: "Rua Principal, 123 São Paulo SP", stars: 4),
    Loja(id: 5, label: "Monstro Burger", logoImage: "monstro-burger-logo", headerImage: "monstro-burger-header", address: "Rua Principal, 123 São Paulo SP", stars: 4),
]

let productList: [Product] = [
    Product(id: 1, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 2, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 3, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 4, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 5, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 6, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai"),
    Product(id: 7, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: "30,00", image: "large_acai")
]

//acai-panda-logo
//bakery-logo
//carbron-logo
//food-court-logo
//monstro-burger-logo
