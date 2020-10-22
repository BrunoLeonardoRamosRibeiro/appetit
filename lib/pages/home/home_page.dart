import 'package:appetit/pages/home/controller/home_page_controller.dart';
import 'package:appetit/shared/constants.dart';
import 'package:appetit/shared/widgets/picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: PictureWidget(
                    imagePath: 'assets/images/ALESSANDRA.jpg',
                    size: 60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá, Alessandra!',
                        style: TextStyle(fontSize: 26, color: ORANGE_APPETIT),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: Divider(
                          color: Colors.lightGreen,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                    height: 60,
                    elevation: 10,
                    onPressed: () {
                      // teste
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 30,
                          color: ORANGE_APPETIT,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'FAZER NOVO PEDIDO',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 16),
                        ),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
