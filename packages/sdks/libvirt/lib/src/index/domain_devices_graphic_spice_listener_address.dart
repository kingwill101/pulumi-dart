// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceListenerAddress {
  /// Sets the actual network address where the Spice listener will accept connections.
  final pulumi.Input<String>? address;

  /// Creates a new [DomainDevicesGraphicSpiceListenerAddress].
  /// [address] Sets the actual network address where the Spice listener will accept connections.
  DomainDevicesGraphicSpiceListenerAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory DomainDevicesGraphicSpiceListenerAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceListenerAddress(
      address: map['address'] == null ? null : (map['address']! as String).input(),
    );
  }
}

