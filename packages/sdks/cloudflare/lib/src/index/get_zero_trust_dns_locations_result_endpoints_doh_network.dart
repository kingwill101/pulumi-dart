// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationsResultEndpointsDohNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsDohNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const GetZeroTrustDnsLocationsResultEndpointsDohNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsDohNetwork.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsDohNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
