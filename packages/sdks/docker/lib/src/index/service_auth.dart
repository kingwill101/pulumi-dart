// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAuth {
  /// The password
  final pulumi.Input<String>? password;
  /// The address of the server for the authentication
  final pulumi.Input<String> serverAddress;
  /// The username
  final pulumi.Input<String>? username;

  /// Creates a new [ServiceAuth].
  /// [password] The password
  /// [serverAddress] The address of the server for the authentication
  /// [username] The username
  ServiceAuth({
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
      password: map['password'] == null ? null : (map['password']! as String).input(),
      serverAddress: (map['serverAddress'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

