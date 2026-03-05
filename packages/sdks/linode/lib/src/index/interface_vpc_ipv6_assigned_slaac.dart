// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceVpcIpv6AssignedSlaac {
  /// The assigned IPv4 address.
  final pulumi.Input<String>? address;
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String>? range;

  /// Creates a new [InterfaceVpcIpv6AssignedSlaac].
  /// [address] The assigned IPv4 address.
  /// [range] The IPv6 network range in CIDR notation.
  InterfaceVpcIpv6AssignedSlaac({
    this.address,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv6AssignedSlaac.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6AssignedSlaac(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

