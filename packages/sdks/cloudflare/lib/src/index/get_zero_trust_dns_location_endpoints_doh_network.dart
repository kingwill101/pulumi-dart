// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationEndpointsDohNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsDohNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const GetZeroTrustDnsLocationEndpointsDohNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory GetZeroTrustDnsLocationEndpointsDohNetwork.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsDohNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
