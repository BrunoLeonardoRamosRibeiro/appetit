// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.codigoproduto,
    this.produto,
    this.quantidade,
    this.valorunitario,
    this.valortotal,
    this.imagem,
    this.categoria,
  });

  String codigoproduto;
  String produto;
  int quantidade;
  double valorunitario;
  double valortotal;
  String imagem;
  String categoria;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    codigoproduto: json["codigoproduto"],
    produto: json["produto"],
    quantidade: json["quantidade"],
    valorunitario: json["valorunitario"].toDouble(),
    valortotal: json["valortotal"].toDouble(),
    imagem: json["imagem"],
    categoria: json["categoria"],
  );

  Map<String, dynamic> toJson() => {
    "codigoproduto": codigoproduto,
    "produto": produto,
    "quantidade": quantidade,
    "valorunitario": valorunitario,
    "valortotal": valortotal,
    "imagem": imagem,
    "categoria": categoria,
  };
}
