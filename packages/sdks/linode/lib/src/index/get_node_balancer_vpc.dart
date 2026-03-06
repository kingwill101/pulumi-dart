// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeBalancerVpc {
  /// A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  final pulumi.Input<String> ipv4Range;
  /// The ID of a subnet to assign to this NodeBalancer.
  final pulumi.Input<int> subnetId;

  /// Creates a new [GetNodeBalancerVpc].
  /// [ipv4Range] A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  /// [subnetId] The ID of a subnet to assign to this NodeBalancer.
  const GetNodeBalancerVpc({
    required this.ipv4Range,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Range': ipv4Range,
      'subnetId': subnetId,
    };
  }

  factory GetNodeBalancerVpc.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerVpc(
      ipv4Range: pulumi.Input.fromValue(map['ipv4Range'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
    );
  }
}

