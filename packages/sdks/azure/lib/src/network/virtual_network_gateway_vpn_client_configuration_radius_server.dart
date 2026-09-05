// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayVpnClientConfigurationRadiusServer {
  /// The address of the Radius Server.
  final pulumi.Input<String> address;
  /// The score of the Radius Server determines the priority of the server. Possible values are between `1` and `30`.
  final pulumi.Input<int> score;
  /// The secret that is used to communicate with the Radius Server.
  final pulumi.Input<String> secret;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRadiusServer].
  /// [address] The address of the Radius Server.
  /// [score] The score of the Radius Server determines the priority of the server. Possible values are between `1` and `30`.
  /// [secret] The secret that is used to communicate with the Radius Server.
  const VirtualNetworkGatewayVpnClientConfigurationRadiusServer({
    required this.address,
    required this.score,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'score': score,
      'secret': secret,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationRadiusServer.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationRadiusServer(
      address: pulumi.Input.fromValue(map['address'] as String),
      score: pulumi.Input.fromValue((map['score'] as num).toInt()),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
