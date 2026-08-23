// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicRdpListenerAddress {
  /// Sets the actual network address where the Spice listener will accept connections.
  final pulumi.Input<String>? address;

  /// Creates a new [DomainDevicesGraphicRdpListenerAddress].
  /// [address] Sets the actual network address where the Spice listener will accept connections.
  const DomainDevicesGraphicRdpListenerAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory DomainDevicesGraphicRdpListenerAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListenerAddress(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
