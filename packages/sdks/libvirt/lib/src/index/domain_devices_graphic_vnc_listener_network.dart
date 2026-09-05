// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicVncListenerNetwork {
  /// Sets the network address for the Spice network listener.
  final pulumi.Input<String?>? address;
  /// Specifies the network to which the Spice listener belongs.
  final pulumi.Input<String?>? network;

  /// Creates a new [DomainDevicesGraphicVncListenerNetwork].
  /// [address] Sets the network address for the Spice network listener.
  /// [network] Specifies the network to which the Spice listener belongs.
  const DomainDevicesGraphicVncListenerNetwork({
    this.address,
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'network': ?network,
    };
  }

  factory DomainDevicesGraphicVncListenerNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVncListenerNetwork(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
