// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAuth {
  /// The password
  final pulumi.Input<String?>? password;
  /// The address of the server for the authentication
  final pulumi.Input<String> serverAddress;
  /// The username
  final pulumi.Input<String?>? username;

  /// Creates a new [ServiceAuth].
  /// [password] The password
  /// [serverAddress] The address of the server for the authentication
  /// [username] The username
  const ServiceAuth({
    this.password,
    required this.serverAddress,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'serverAddress': serverAddress,
      'username': ?username,
    };
  }

  factory ServiceAuth.fromMap(Map<String, dynamic> map) {
    return ServiceAuth(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddress: pulumi.Input.fromValue(map['serverAddress'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
