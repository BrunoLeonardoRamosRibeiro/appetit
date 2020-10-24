import 'dart:async';

import 'package:appetit/shared/models/order.dart';
import 'package:either_option/either_option.dart';

class OrderRepository {
  OrderRepository();

  Future<Either<String, List<Order>>> getOrders() async{

    await Future.delayed(Duration(seconds: 1));

    List<Order> listOrders = [
      Order(numeropedido: "1", codigocliente: '1', data: "23/10/2020", nomecliente: "Hanna Montana", total: 5.50,
        items: [
          Item(codigoproduto: '1' , imagem:'' ,produto:'' ,quantidade:1 ,valortotal: 3.00, valorunitario: 3.00 ),
          Item(codigoproduto: '1' , imagem:'' ,produto:'' ,quantidade:1 ,valortotal: 3.00, valorunitario: 3.00 ),
        ]
      )
    ];

    try{
      return Right(listOrders);

    } catch (e){
      return Left('Erro de conexão');
    }


  }

}