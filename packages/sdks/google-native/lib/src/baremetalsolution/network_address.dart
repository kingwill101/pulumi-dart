// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network.
class NetworkAddress {
  /// IPv4 address to be assigned to the server.
  final pulumi.Input<String>? address;
  /// Name of the existing network to use.
  final pulumi.Input<String>? existingNetworkId;
  /// Id of the network to use, within the same ProvisioningConfig request.
  final pulumi.Input<String>? networkId;

  /// Creates a new [NetworkAddress].
  /// [address] IPv4 address to be assigned to the server.
  /// [existingNetworkId] Name of the existing network to use.
  /// [networkId] Id of the network to use, within the same ProvisioningConfig request.
  const NetworkAddress({
    this.address,
    this.existingNetworkId,
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'existingNetworkId': ?existingNetworkId,
      'networkId': ?networkId,
    };
  }

  factory NetworkAddress.fromMap(Map<String, dynamic> map) {
    return NetworkAddress(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingNetworkId: (() { final guardedValue = map['existingNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

