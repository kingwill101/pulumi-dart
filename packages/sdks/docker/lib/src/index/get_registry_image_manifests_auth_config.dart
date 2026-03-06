// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryImageManifestsAuthConfig {
  /// The address of the Docker registry.
  final pulumi.Input<String> address;
  /// The password for the Docker registry.
  final pulumi.Input<String> password;
  /// The username for the Docker registry.
  final pulumi.Input<String> username;

  /// Creates a new [GetRegistryImageManifestsAuthConfig].
  /// [address] The address of the Docker registry.
  /// [password] The password for the Docker registry.
  /// [username] The username for the Docker registry.
  const GetRegistryImageManifestsAuthConfig({
    required this.address,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'password': password,
      'username': username,
    };
  }

  factory GetRegistryImageManifestsAuthConfig.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsAuthConfig(
      address: pulumi.Input.fromValue(map['address'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

