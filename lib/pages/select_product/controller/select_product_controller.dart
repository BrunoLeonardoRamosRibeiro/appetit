import 'package:appetit/shared/models/category.dart';
import 'package:appetit/shared/models/product.dart';
import 'package:appetit/shared/repositories/category_repository.dart';
import 'package:appetit/shared/repositories/product_repository.dart';
import 'package:collection/collection.dart';
import 'package:either_option/either_option.dart';
import 'package:get/get.dart';

class SelectProductController extends GetxController {
  ProductRepository productRepository = ProductRepository();
  CategoryRepository categoryRepository = CategoryRepository();

  RxList<Product> products = RxList<Product>();

  setProducts(List<Product> listProduct) => products.value = listProduct;

  RxBool isLoading = RxBool(true);

  void setLoading(bool value) => isLoading.value = value;

  RxList<Category> categories = RxList<Category>();

  setCategories(List<Category> listCategories) =>
      categories.value = listCategories;

  fetchProducts() async {
    Either<String, List<Product>> resProducts =
        await productRepository.getProducts();
    resProducts.fold(
        (msg) => print(msg), (listProduct) => setProducts(listProduct));
  }

  fetchCategories() async {
    Either<String, List<Category>> resCategories =
        await categoryRepository.getCategories();
    resCategories.fold(
        (msg) => print(msg), (listCategories) => setCategories(listCategories));
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    setLoading(true);
    fetchCategories();
    fetchProducts();
    setLoading(false);

  }
}
