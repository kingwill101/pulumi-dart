// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsLocationNetwork {
  /// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a maximum of /24.
  final pulumi.Input<String> network;

  /// Creates a new [TeamsLocationNetwork].
  /// [network] Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a maximum of /24.
  const TeamsLocationNetwork({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory TeamsLocationNetwork.fromMap(Map<String, dynamic> map) {
    return TeamsLocationNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
