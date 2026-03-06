// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceVpcIpv6AssignedRange {
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String>? range;

  /// Creates a new [InterfaceVpcIpv6AssignedRange].
  /// [range] The IPv6 network range in CIDR notation.
  const InterfaceVpcIpv6AssignedRange({
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv6AssignedRange.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6AssignedRange(
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

