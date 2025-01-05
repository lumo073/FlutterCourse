import "package:http/http.dart" as http;
import "dart:convert";
import "../model/Product.dart";

class ProductApi {
  static const String url = "https://fakestoreapi.com/products";

  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> datas = json.decode(response.body);
      return datas.map((data) => Product.fromJson(data)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
