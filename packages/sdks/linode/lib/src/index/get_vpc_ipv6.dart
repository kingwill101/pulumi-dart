// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpv6 {
  /// The IPv6 range assigned to this VPC.
  final pulumi.Input<String> range;

  /// Creates a new [GetVpcIpv6].
  /// [range] The IPv6 range assigned to this VPC.
  GetVpcIpv6({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetVpcIpv6.fromMap(Map<String, dynamic> map) {
    return GetVpcIpv6(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

