// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationRadiusServer {
  /// The Address of the Radius Server.
  final pulumi.Input<String> address;
  /// The Score of the Radius Server determines the priority of the server. Ranges from 1 to 30.
  final pulumi.Input<int> score;
  /// The Secret used to communicate with the Radius Server.
  final pulumi.Input<String> secret;

  /// Creates a new [VpnServerConfigurationRadiusServer].
  /// [address] The Address of the Radius Server.
  /// [score] The Score of the Radius Server determines the priority of the server. Ranges from 1 to 30.
  /// [secret] The Secret used to communicate with the Radius Server.
  VpnServerConfigurationRadiusServer({
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

  factory VpnServerConfigurationRadiusServer.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationRadiusServer(
      address: pulumi.Input.fromValue(map['address'] as String),
      score: pulumi.Input.fromValue(map['score'] as int),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}

