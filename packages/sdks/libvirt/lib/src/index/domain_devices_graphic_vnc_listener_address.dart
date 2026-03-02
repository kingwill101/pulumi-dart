// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicVncListenerAddress {
  /// Sets the actual network address where the Spice listener will accept connections.
  final pulumi.Input<String>? address;

  /// Creates a new [DomainDevicesGraphicVncListenerAddress].
  /// [address] Sets the actual network address where the Spice listener will accept connections.
  DomainDevicesGraphicVncListenerAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory DomainDevicesGraphicVncListenerAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVncListenerAddress(
      address: map['address'] == null ? null : (map['address']! as String).input(),
    );
  }
}

