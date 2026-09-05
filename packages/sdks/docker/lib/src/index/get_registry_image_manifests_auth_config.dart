// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryImageManifestsAuthConfig {
  /// The address of the Docker registry.
  final pulumi.Input<String> address;
  /// The password for the Docker registry.
  final pulumi.Input<String?>? password;
  /// The username for the Docker registry.
  final pulumi.Input<String?>? username;

  /// Creates a new [GetRegistryImageManifestsAuthConfig].
  /// [address] The address of the Docker registry.
  /// [password] The password for the Docker registry.
  /// [username] The username for the Docker registry.
  const GetRegistryImageManifestsAuthConfig({
    required this.address,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'password': ?password,
      'username': ?username,
    };
  }

  factory GetRegistryImageManifestsAuthConfig.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsAuthConfig(
      address: pulumi.Input.fromValue(map['address'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
