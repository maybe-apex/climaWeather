import 'dart:convert';

import 'package:http/http.dart' as http;

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '2A86563E-4A45-4DBC-8516-FF778160BC4D';

void main() async {
  String requestURL = '$coinAPIURL/BTC/INR?apikey=$apiKey';
  http.Response response = await http.get(Uri.parse(requestURL));
  var decodeData = jsonDecode(response.body);
  print(decodeData);
}
