// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsLocationEndpointsDotNetwork {
  /// Specify the IP address or IP CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [TeamsLocationEndpointsDotNetwork].
  /// [network] Specify the IP address or IP CIDR.
  const TeamsLocationEndpointsDotNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory TeamsLocationEndpointsDotNetwork.fromMap(Map<String, dynamic> map) {
    return TeamsLocationEndpointsDotNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
