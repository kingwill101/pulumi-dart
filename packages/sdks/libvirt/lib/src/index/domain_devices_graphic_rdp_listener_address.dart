// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicRdpListenerAddress {
  /// Sets the actual network address where the Spice listener will accept connections.
  final pulumi.Input<String>? address;

  /// Creates a new [DomainDevicesGraphicRdpListenerAddress].
  /// [address] Sets the actual network address where the Spice listener will accept connections.
  DomainDevicesGraphicRdpListenerAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory DomainDevicesGraphicRdpListenerAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListenerAddress(
      address: map['address'] == null ? null : (map['address'] as String).input(),
    );
  }
}

