import 'package:appetit/shared/models/product.dart';
import 'package:get/get.dart';

class DetailOrderController extends GetxController{

  Product product = Product();

  RxBool isLoading = RxBool(true);
  void setLoading(bool value) => isLoading.value = value;

  RxBool obsIsEditing = RxBool(false);
  void setObsIsEditing(bool value) => obsIsEditing.value = value;

  RxBool navValuesBarVisible = RxBool(false);
  void setValuesBarVisible(bool value) => navValuesBarVisible.value = value;

  RxInt selectedOptionIndex = RxInt(null);
  setSelectOption(int value) => selectedOptionIndex.value = value;

  RxString observation = RxString("");
  setObs(String value) => observation.value = value;

  RxInt quantity = RxInt(1);
  incQuantity() => quantity.value++;
  decQuantity() => (quantity.value < 1)? quantity.value = 1 : quantity.value--;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    product = (Get.arguments as Product);

    if (product.opcoes.length == 0){
      setValuesBarVisible(true);
    }

  }




}