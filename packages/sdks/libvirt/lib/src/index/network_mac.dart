// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkMac {
  /// Specifies the actual MAC address associated with the network.
  final pulumi.Input<String>? address;

  /// Creates a new [NetworkMac].
  /// [address] Specifies the actual MAC address associated with the network.
  const NetworkMac({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory NetworkMac.fromMap(Map<String, dynamic> map) {
    return NetworkMac(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
