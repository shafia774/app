import 'package:sevafarm_app/appscreens/auth.dart';
import 'package:intl/intl.dart';
import 'cart.dart';

import 'fruitprod.dart';
import 'package:http/http.dart' as http;

Future<List<Fruitprod>> placeOrder({product,quantity,price}) async {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  String string = dateFormat.format(DateTime.now());
  Auth user = new Auth();
  Cart cart = Cart();
  int index;



  var url = Uri.parse(
      "http://192.168.1.8/sevafarm/api/order.php");

  final response = await http.post(url,body: {
    'product':product,
    'quantity': quantity,
    'customerid':user.username,
    'address' :user.name,
    'ordertime': string,
    'price' : price

  });

  //return fruitprodFromJson(response.body);
}
