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
    Loja(id: 1, label: "Açaí Panda", logoImage: "acai-panda-logo", headerImage: "acai-panda-header", address: "Rua Principal, 123 São Paulo SP", stars: 4, products: acaiPandaProductList),
    Loja(id: 2, label: "Padaria", logoImage: "bakery-logo", headerImage: "bakery-header", address: "Rua Principal, 123 São Paulo SP", stars: 4, products: padariaProductList),
    Loja(id: 3, label: "Carbron", logoImage: "carbron-logo", headerImage: "carbron-header", address: "Rua Principal, 123 São Paulo SP", stars: 3, products: carbronProductList),
    Loja(id: 4, label: "Food Court", logoImage: "food-court-logo", headerImage: "food-court-header", address: "Rua Principal, 123 São Paulo SP", stars: 2, products: foodCourtProductList),
    Loja(id: 5, label: "Monstro Burger", logoImage: "monstro-burger-logo", headerImage: "monstro-burger-header", address: "Rua Principal, 123 São Paulo SP", stars: 1, products: monstroBurguerProductList),
]

// Sample Produt List
let productList: [Product] = [
    Product(id: 1, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 2, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 3, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 4, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 5, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 6, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai"),
    Product(id: 7, nome: "Açaí", descricao: "Açaí Polpa Norte", preco: 30.00, image: "large_acai")
]

// Exemplos de Product List de Todos Estabelecimentos

let monstroBurguerProductList: [Product] = [
    Product(id: 1, nome: "Hambúrguer Clássico", descricao: "Hambúrguer de carne com queijo, alface e tomate", preco: 14.99, image: "classic_burger"),
    Product(id: 2, nome: "Hambúrguer com Bacon", descricao: "Hambúrguer de carne com queijo, bacon crocante, alface e tomate", preco: 16.99, image: "bacon_burger"),
    Product(id: 3, nome: "Batatas Fritas", descricao: "Porção de batatas fritas crocantes", preco: 5.99, image: "fries"),
    Product(id: 4, nome: "Refrigerante", descricao: "Lata de refrigerante de 355ml", preco: 3.99, image: "soda"),
    Product(id: 5, nome: "Sorvete de Baunilha", descricao: "Copo de sorvete de baunilha", preco: 4.99, image: "vanilla_ice_cream")
]


let foodCourtProductList: [Product] = [
    Product(id: 6, nome: "Pizza Margherita", descricao: "Pizza com molho de tomate, queijo mozzarella e manjericão", preco: 18.99, image: "margherita_pizza"),
    Product(id: 7, nome: "Pizza Pepperoni", descricao: "Pizza com molho de tomate, queijo mozzarella e pepperoni", preco: 19.99, image: "pepperoni_pizza"),
    Product(id: 8, nome: "Pizza Quatro Queijos", descricao: "Pizza com queijo mozzarella, provolone, parmesão e gorgonzola", preco: 21.99, image: "four_cheeses_pizza"),
    Product(id: 9, nome: "Lasanha à Bolonhesa", descricao: "Lasanha com molho à bolonhesa, queijo e béchamel", preco: 22.99, image: "lasagna"),
    Product(id: 10, nome: "Espaguete à Carbonara", descricao: "Espaguete com molho carbonara", preco: 20.99, image: "spaghetti_carbonara")
]


let carbronProductList: [Product] = [
    Product(id: 11, nome: "Picanha", descricao: "Picanha grelhada servida com arroz, farofa e vinagrete", preco: 29.99, image: "picanha"),
    Product(id: 12, nome: "Costela no bafo", descricao: "Deliciosa costela assada lentamente, servida com batatas", preco: 26.99, image: "ribs"),
    Product(id: 13, nome: "Fraldinha", descricao: "Fraldinha grelhada servida com arroz, farofa e vinagrete", preco: 27.99, image: "fraldinha"),
    Product(id: 14, nome: "Maminha", descricao: "Maminha grelhada servida com arroz, farofa e vinagrete", preco: 28.99, image: "maminha"),
    Product(id: 15, nome: "Churrasco Misto", descricao: "Churrasco misto com linguiça, frango e carne bovina, servido com arroz, farofa e vinagrete", preco: 34.99, image: "mixed_grill")
]

let padariaProductList: [Product] = [
    Product(id: 16, nome: "Pão Francês", descricao: "Pão francês fresquinho", preco: 0.50, image: "french_bread"),
    Product(id: 17, nome: "Croissant", descricao: "Croissant folhado", preco: 2.99, image: "croissant"),
    Product(id: 18, nome: "Rosca Doce", descricao: "Rosca doce com cobertura de açúcar", preco: 3.99, image: "sweet_bread"),
    Product(id: 19, nome: "Bolo de Chocolate", descricao: "Fatia de bolo de chocolate", preco: 4.99, image: "chocolate_cake_slice"),
    Product(id: 20, nome: "Café", descricao: "Café quente", preco: 1.99, image: "coffee")
]

let acaiPandaProductList: [Product] = [
    Product(id: 21, nome: "Açaí Pequeno", descricao: "Açaí na tigela de 300ml com granola e banana", preco: 8.99, image: "small_acai"),
    Product(id: 22, nome: "Açaí Médio", descricao: "Açaí na tigela de 500ml com granola, banana e leite condensado", preco: 10.99, image: "medium_acai"),
    Product(id: 23, nome: "Açaí Grande", descricao: "Açaí na tigela de 700ml com granola, banana, leite condensado e morangos", preco: 13.99, image: "large_acai"),
    Product(id: 24, nome: "Smoothie de Morango", descricao: "Smoothie de morango feito com iogurte natural", preco: 6.99, image: "strawberry_smoothie"),
    Product(id: 25, nome: "Smoothie de Banana e Cacau", descricao: "Smoothie de banana e cacau feito com iogurte natural", preco: 6.99, image: "banana_cocoa_smoothie")
]
