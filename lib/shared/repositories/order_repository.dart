import 'dart:async';

import 'package:appetit/shared/models/order.dart';
import 'package:either_option/either_option.dart';

class OrderRepository {
  OrderRepository();

  Future<Either<String, List<Order>>> getOrders() async{

    await Future.delayed(Duration(seconds: 1));

    List<Order> listOrders = [
      Order(numeropedido: "1", codigocliente: '1', data: "22/10/2020", nomecliente: "Hanna Montana", total: 5.50,
        items: [
          Item(codigoproduto: '1' , imagem:'' ,produto:'' ,quantidade:1 ,valortotal: 3.00, valorunitario: 3.00 ),
          Item(codigoproduto: '2' , imagem:'' ,produto:'' ,quantidade:1 ,valortotal: 2.50, valorunitario: 2.50 ),
        ]
      ),
      Order(numeropedido: "2", codigocliente: '2', data: "22/10/2020", nomecliente: "Pablo Alvarez", total: 6.00,
          items: [
            Item(codigoproduto: '2' , imagem:'' ,produto:'' ,quantidade:2 ,valortotal: 6.00, valorunitario: 3.00 ),
          ]
      ),
    ];

    try{
      return Right(listOrders);

    } catch (e){
      return Left('Erro de conexão');
    }


  }

}