// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcSubnetIpv6 {
  /// An IPv6 range allocated to this subnet.
  final pulumi.Input<String> range;

  /// Creates a new [GetVpcSubnetIpv6].
  /// [range] An IPv6 range allocated to this subnet.
  GetVpcSubnetIpv6({required this.range});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'range': range};
  }

  factory GetVpcSubnetIpv6.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetIpv6(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}
