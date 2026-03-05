// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image registry credential.
class ImageRegistryCredential {
  /// The password for the private registry. The password is required for create or update operations, however it is not returned in the get or list operations.
  final pulumi.Input<String>? password;
  /// Docker image registry server, without protocol such as `http` and `https`.
  final pulumi.Input<String> server;
  /// The username for the private registry.
  final pulumi.Input<String> username;

  /// Creates a new [ImageRegistryCredential].
  /// [password] The password for the private registry. The password is required for create or update operations, however it is not returned in the get or list operations.
  /// [server] Docker image registry server, without protocol such as `http` and `https`.
  /// [username] The username for the private registry.
  ImageRegistryCredential({
    this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': server,
      'username': username,
    };
  }

  factory ImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredential(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

