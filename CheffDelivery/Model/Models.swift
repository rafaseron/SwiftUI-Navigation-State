//
//  Categoria.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 25/04/24.
//

import Foundation

//Implementando o protocolo 'Identifiable', ganha propriedades relacionadas a ID de elementos, como iteracao nativa em ForEach, ID sempre unico como UUID, etc. Ler documentacao se precisar
struct Categoria: Identifiable{
    let id: Int
    let label: String
    let image: String
}

struct Loja: Identifiable{
    let id: Int
    let label: String
    let logoImage: String
    let headerImage: String
    let address: String
    let stars: Int
    let products: [Product]
}

struct Product: Identifiable{
    let id: Int
    let nome: String
    let descricao: String
    let preco: Double
    let image: String
}
