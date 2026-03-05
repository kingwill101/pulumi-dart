// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv4Address {
  /// The IPv4 address. Defaults to "auto" for automatic assignment.
  final pulumi.Input<String>? address;
  /// Whether this address is the primary address for the interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [InterfacePublicIpv4Address].
  /// [address] The IPv4 address. Defaults to "auto" for automatic assignment.
  /// [primary] Whether this address is the primary address for the interface.
  InterfacePublicIpv4Address({
    this.address,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'primary': ?primary,
    };
  }

  factory InterfacePublicIpv4Address.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4Address(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

