import 'dart:io';

import 'package:car_app/models/car_model.dart';
import 'package:dio/dio.dart';

class CarController {
  List<Cars> cars = [];
  Dio dio = Dio();

  Future<void> fetchAllCars() async {
    String url = 'http://45.87.173.234:10/car';
    try {
      var response = await dio.get(url);

      if (response.statusCode == HttpStatus.ok) {
        List<dynamic> carList = response.data['cars'];
        carList.forEach((element) {
          cars.add(Cars.fromJson(element));
        });
      }
    } catch (error) {
      print(error);
    }
  }
}
