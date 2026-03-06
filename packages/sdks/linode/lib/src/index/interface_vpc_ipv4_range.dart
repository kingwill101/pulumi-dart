// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceVpcIpv4Range {
  /// The IPv4 range.
  final pulumi.Input<String> range;

  /// Creates a new [InterfaceVpcIpv4Range].
  /// [range] The IPv4 range.
  const InterfaceVpcIpv4Range({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory InterfaceVpcIpv4Range.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4Range(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

