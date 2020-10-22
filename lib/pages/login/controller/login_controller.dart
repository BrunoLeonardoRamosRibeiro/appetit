import 'package:get/get.dart';

class LoginController extends GetxController{
  RxString labelEmail = RxString("Insira seu e-mail aqui");
  setLabelEmail(String value) => labelEmail.value = value;

  RxString labelPassword = RxString("Insira sua senha aqui");
  setLabelPassword(String value) => labelPassword.value = value;

  RxBool showPassword = RxBool(false);
  setShowPassword(bool value) => showPassword.value = value;
}