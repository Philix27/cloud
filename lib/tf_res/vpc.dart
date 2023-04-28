import 'package:cloud_gen/tf_res/AResource.dart';

class RVpc implements AResource {
  // @override
  // String id;

  @override
  String name;

  @override
  String type = "aws_vpc";

  late String? version;

  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it
  /// can be derived from IPAM using ipv4_netmask_length
  String cidr_block;
  String instance_tenancy;
  String tags;
  late String id;
  bool enable_dns_support;
  late String ipv4_ipam_pool_id;
  late String enable_dns_hostnames;
  late String ipv6_cidr_block_network_border_group;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  bool enable_network_address_usage_metrics;

  RVpc({
    required this.name,
    this.version,
    this.cidr_block = "10.0.0.0/16",
    this.instance_tenancy = "default",
    this.tags = "main",
    this.enable_dns_support = true,
    this.enable_network_address_usage_metrics = false,
  });

  // @override
  @override
  Map<String, dynamic> mapper() {
    return {
      "resource": {
        type: {
          name: {
            "cidr_block": cidr_block,
            "instance_tenancy": instance_tenancy,
            "tags": {
              "Name": tags,
            }
          }
        }
      },
    };
  }
}
