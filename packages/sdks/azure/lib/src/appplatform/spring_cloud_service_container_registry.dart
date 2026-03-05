// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceContainerRegistry {
  /// Specifies the name of the container registry.
  final pulumi.Input<String> name;
  /// Specifies the password of the container registry.
  final pulumi.Input<String> password;
  /// Specifies the login server of the container registry.
  final pulumi.Input<String> server;
  /// Specifies the username of the container registry.
  final pulumi.Input<String> username;

  /// Creates a new [SpringCloudServiceContainerRegistry].
  /// [name] Specifies the name of the container registry.
  /// [password] Specifies the password of the container registry.
  /// [server] Specifies the login server of the container registry.
  /// [username] Specifies the username of the container registry.
  SpringCloudServiceContainerRegistry({
    required this.name,
    required this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
      'server': server,
      'username': username,
    };
  }

  factory SpringCloudServiceContainerRegistry.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceContainerRegistry(
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

