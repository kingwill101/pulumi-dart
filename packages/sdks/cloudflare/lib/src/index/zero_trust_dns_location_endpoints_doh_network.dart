// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDnsLocationEndpointsDohNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [ZeroTrustDnsLocationEndpointsDohNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const ZeroTrustDnsLocationEndpointsDohNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory ZeroTrustDnsLocationEndpointsDohNetwork.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsDohNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
