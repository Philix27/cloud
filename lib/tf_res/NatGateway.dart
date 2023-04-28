import 'package:cloud_gen/tf_res/AResource.dart';

class RNatGateway implements AResource {
  // @override
  // String id;

  @override
  String name;

  @override
  String type = "aws_nat";

  late String? version;

  RNatGateway({
    required this.name,
    this.version,
  });

  // @override
  @override
  Map<String, dynamic> mapper() {
    return {
      "resource": type,
    };
  }
}
