// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Registry {
  /// The registry's address (e.g. "docker.io").
  final pulumi.Input<String> address;
  /// Password or token for the registry.
  final pulumi.Input<String>? password;
  /// Username for the registry.
  final pulumi.Input<String>? username;

  /// Creates a new [Registry].
  /// [address] The registry's address (e.g. "docker.io").
  /// [password] Password or token for the registry.
  /// [username] Username for the registry.
  const Registry({
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

  factory Registry.fromMap(Map<String, dynamic> map) {
    return Registry(
      address: pulumi.Input.fromValue(map['address'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

