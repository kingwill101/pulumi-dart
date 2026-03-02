// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnServerConfigurationRadiusServer {
  /// The Address of the Radius Server.
  final pulumi.Input<String> address;
  /// The Score of the Radius Server determines the priority of the server.
  final pulumi.Input<int> score;
  /// The Secret used to communicate with the Radius Server.
  final pulumi.Input<String> secret;

  /// Creates a new [GetVpnServerConfigurationRadiusServer].
  /// [address] The Address of the Radius Server.
  /// [score] The Score of the Radius Server determines the priority of the server.
  /// [secret] The Secret used to communicate with the Radius Server.
  GetVpnServerConfigurationRadiusServer({
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

  factory GetVpnServerConfigurationRadiusServer.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationRadiusServer(
      address: (map['address'] as String).input(),
      score: (map['score'] as int).input(),
      secret: (map['secret'] as String).input(),
    );
  }
}

