import 'product.dart';
import 'package:http/http.dart' as http;
Future<List<Products>> fetchProducts() async{
  var url = Uri.parse("http://192.168.1.8/sevafarm/api/products.php");
  final response = await http.get(url);
  return productsFromJson(response.body);
}