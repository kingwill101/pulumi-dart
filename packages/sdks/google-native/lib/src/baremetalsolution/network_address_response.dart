// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network.
class NetworkAddressResponse {
  /// IPv4 address to be assigned to the server.
  final pulumi.Input<String> address;
  /// Name of the existing network to use.
  final pulumi.Input<String> existingNetworkId;
  /// Id of the network to use, within the same ProvisioningConfig request.
  final pulumi.Input<String> networkId;

  /// Creates a new [NetworkAddressResponse].
  /// [address] IPv4 address to be assigned to the server.
  /// [existingNetworkId] Name of the existing network to use.
  /// [networkId] Id of the network to use, within the same ProvisioningConfig request.
  NetworkAddressResponse({
    required this.address,
    required this.existingNetworkId,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'existingNetworkId': existingNetworkId,
      'networkId': networkId,
    };
  }

  factory NetworkAddressResponse.fromMap(Map<String, dynamic> map) {
    return NetworkAddressResponse(
      address: (map['address'] as String).input(),
      existingNetworkId: (map['existingNetworkId'] as String).input(),
      networkId: (map['networkId'] as String).input(),
    );
  }
}

