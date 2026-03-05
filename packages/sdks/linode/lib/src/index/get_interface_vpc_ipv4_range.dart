// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfaceVpcIpv4Range {
  /// The VPC IPv4 range.
  final pulumi.Input<String> range;

  /// Creates a new [GetInterfaceVpcIpv4Range].
  /// [range] The VPC IPv4 range.
  GetInterfaceVpcIpv4Range({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetInterfaceVpcIpv4Range.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv4Range(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

