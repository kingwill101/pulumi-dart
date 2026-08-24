// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDnsLocationEndpointsDotNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [ZeroTrustDnsLocationEndpointsDotNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const ZeroTrustDnsLocationEndpointsDotNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory ZeroTrustDnsLocationEndpointsDotNetwork.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsDotNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
