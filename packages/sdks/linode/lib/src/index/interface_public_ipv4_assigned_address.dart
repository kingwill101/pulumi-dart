// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv4AssignedAddress {
  /// The assigned IPv4 address.
  final pulumi.Input<String>? address;

  /// Whether this address is the primary address for the interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [InterfacePublicIpv4AssignedAddress].
  /// [address] The assigned IPv4 address.
  /// [primary] Whether this address is the primary address for the interface.
  InterfacePublicIpv4AssignedAddress({this.address, this.primary});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'primary': ?primary};
  }

  factory InterfacePublicIpv4AssignedAddress.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4AssignedAddress(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
