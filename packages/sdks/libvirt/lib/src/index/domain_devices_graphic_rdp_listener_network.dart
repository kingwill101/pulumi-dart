// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicRdpListenerNetwork {
  /// Sets the network address for the Spice network listener.
  final pulumi.Input<String?>? address;
  /// Specifies the network to which the Spice listener belongs.
  final pulumi.Input<String?>? network;

  /// Creates a new [DomainDevicesGraphicRdpListenerNetwork].
  /// [address] Sets the network address for the Spice network listener.
  /// [network] Specifies the network to which the Spice listener belongs.
  const DomainDevicesGraphicRdpListenerNetwork({
    this.address,
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'network': ?network,
    };
  }

  factory DomainDevicesGraphicRdpListenerNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListenerNetwork(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
