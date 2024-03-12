import 'dart:convert';

import 'data_ob.dart';
class Code {
late num code ;
late Data data;
Code.fromJson(Map<String,dynamic>json){
  code = json["code"]??0;
  data = Data.fromJson(json['data']);

}
}