// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceVpcIpv4AssignedRange {
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String>? range;

  /// Creates a new [InterfaceVpcIpv4AssignedRange].
  /// [range] The IPv6 network range in CIDR notation.
  InterfaceVpcIpv4AssignedRange({
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv4AssignedRange.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4AssignedRange(
      range: map['range'] == null ? null : (map['range']! as String).input(),
    );
  }
}

