// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationEndpointsDotNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsDotNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const GetZeroTrustDnsLocationEndpointsDotNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory GetZeroTrustDnsLocationEndpointsDotNetwork.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsDotNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
