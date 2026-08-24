// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsLocationEndpointsDohNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [TeamsLocationEndpointsDohNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const TeamsLocationEndpointsDohNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory TeamsLocationEndpointsDohNetwork.fromMap(Map<String, dynamic> map) {
    return TeamsLocationEndpointsDohNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
