// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);

import 'dart:convert';

Client clientFromJson(String str) => Client.fromJson(json.decode(str));

String clientToJson(Client data) => json.encode(data.toJson());

class Client {
  Client({
    this.codigocliente,
    this.nomecliente,
    this.imagem,
  });

  String codigocliente;
  String nomecliente;
  String imagem;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    codigocliente: json["codigocliente"],
    nomecliente: json["nomecliente"],
    imagem: json["imagem"],
  );

  Map<String, dynamic> toJson() => {
    "codigocliente": codigocliente,
    "nomecliente": nomecliente,
    "imagem": imagem,
  };
}
