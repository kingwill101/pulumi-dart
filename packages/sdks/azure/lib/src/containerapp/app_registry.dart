// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppRegistry {
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  ///
  /// &gt; **Note:** The Resource ID must be of a User Assigned Managed identity defined in an `identity` block.
  final pulumi.Input<String>? identity;
  /// The name of the Secret Reference containing the password value for this user on the Container Registry, `username` must also be supplied.
  final pulumi.Input<String>? passwordSecretName;
  /// The hostname for the Container Registry.
  ///
  /// The authentication details must also be supplied, `identity` and `username`/`password_secret_name` are mutually exclusive.
  final pulumi.Input<String> server;
  /// The username to use for this Container Registry, `password_secret_name` must also be supplied..
  final pulumi.Input<String>? username;

  /// Creates a new [AppRegistry].
  /// [identity] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [passwordSecretName] The name of the Secret Reference containing the password value for this user on the Container Registry, `username` must also be supplied.
  /// [server] The hostname for the Container Registry.
  /// [username] The username to use for this Container Registry, `password_secret_name` must also be supplied..
  const AppRegistry({
    this.identity,
    this.passwordSecretName,
    required this.server,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'passwordSecretName': ?passwordSecretName,
      'server': server,
      'username': ?username,
    };
  }

  factory AppRegistry.fromMap(Map<String, dynamic> map) {
    return AppRegistry(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretName: (() { final guardedValue = map['passwordSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

