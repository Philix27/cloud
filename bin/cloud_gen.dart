import 'dart:io';
import 'dart:convert';
import 'package:cloud_gen/tf_gen/component.dart';
import 'package:cloud_gen/tf_res/vpc.dart';

void main() async {
  final filename = 'file.tf.json';
  var content = RVpc(name: 'my_vpc').mapper();
  print(json.encode(content));

  // json.encode(content);
  var file = await File(filename).writeAsString(json.encode(content));
}
