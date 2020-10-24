import 'dart:convert';

import 'package:appetit/shared/models/order.dart';
import 'package:appetit/shared/repositories/order_repository.dart';
import 'package:collection/collection.dart';
import 'package:either_option/either_option.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{

  OrderRepository orderRepository = OrderRepository();

  List<Order> orders = List<Order>();
  setOrders(List<Order> listOrders) => orders = listOrders;

  List<String> dates = List<String>();
  setDates(List<String> listDates) => dates = listDates;

  RxBool isLoading = RxBool(false);
  void setLoading(bool value) => isLoading.value = value;


  fetchOrders() async {
    setLoading(true);
    Either<String, List<Order>> resOrders = await orderRepository.getOrders();
    resOrders.fold((msg) => print(msg), (listOrders) => setOrders(listOrders));
    print(orders.length);


    var groupByDate = groupBy(orders, (obj) => obj.data);
    groupByDate.forEach((date, list) {
      dates.add(date);
      print('${date}');
    });

    setLoading(false);


  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchOrders();
  }

}