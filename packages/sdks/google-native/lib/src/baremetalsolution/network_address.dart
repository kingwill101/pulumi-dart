// ignore_for_file: unused_element, unnecessary_cast


/// A network.
class NetworkAddress {
  /// IPv4 address to be assigned to the server.
  final String? address;
  /// Name of the existing network to use.
  final String? existingNetworkId;
  /// Id of the network to use, within the same ProvisioningConfig request.
  final String? networkId;

  /// Creates a new [NetworkAddress].
  /// [address] IPv4 address to be assigned to the server.
  /// [existingNetworkId] Name of the existing network to use.
  /// [networkId] Id of the network to use, within the same ProvisioningConfig request.
  NetworkAddress({
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
      address: map['address'] == null ? null : map['address'] as String,
      existingNetworkId: map['existingNetworkId'] == null ? null : map['existingNetworkId'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
    );
  }
}

