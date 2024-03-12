

import 'package:dio/dio.dart';

import 'json_folder/code.dart';
import 'json_folder/data_ob.dart';

Future<void> main()async{
final data = await Dio().get("https://thimar-g3-default-rtdb.firebaseio.com/.json");
Code dataEx = Code.fromJson(data.data);
print(dataEx.data.id);


}