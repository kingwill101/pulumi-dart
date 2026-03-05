// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterGateway {
  /// Is the Ambari Portal enabled?
  final pulumi.Input<bool> enabled;
  /// The password used for the Ambari Portal.
  final pulumi.Input<String> password;
  /// The username used for the Ambari Portal.
  final pulumi.Input<String> username;

  /// Creates a new [GetClusterGateway].
  /// [enabled] Is the Ambari Portal enabled?
  /// [password] The password used for the Ambari Portal.
  /// [username] The username used for the Ambari Portal.
  GetClusterGateway({
    required this.enabled,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'password': password,
      'username': username,
    };
  }

  factory GetClusterGateway.fromMap(Map<String, dynamic> map) {
    return GetClusterGateway(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

