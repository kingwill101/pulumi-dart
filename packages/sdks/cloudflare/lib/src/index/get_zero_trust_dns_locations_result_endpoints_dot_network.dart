// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationsResultEndpointsDotNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsDotNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const GetZeroTrustDnsLocationsResultEndpointsDotNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsDotNetwork.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsDotNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
