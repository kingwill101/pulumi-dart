// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskRegistryCredentialCustom {
  /// The managed identity assigned to this custom credential. For user assigned identity, the value is the client ID of the identity. For system assigned identity, the value is `[system]`.
  final pulumi.Input<String>? identity;
  /// The login server of the custom Container Registry.
  final pulumi.Input<String> loginServer;
  /// The password for logging into the custom Container Registry. It can be either a plain text of password, or a Keyvault Secret ID.
  final pulumi.Input<String>? password;
  /// The username for logging into the custom Container Registry. It can be either a plain text of username, or a Keyvault Secret ID.
  final pulumi.Input<String>? username;

  /// Creates a new [RegistryTaskRegistryCredentialCustom].
  /// [identity] The managed identity assigned to this custom credential. For user assigned identity, the value is the client ID of the identity. For system assigned identity, the value is `[system]`.
  /// [loginServer] The login server of the custom Container Registry.
  /// [password] The password for logging into the custom Container Registry. It can be either a plain text of password, or a Keyvault Secret ID.
  /// [username] The username for logging into the custom Container Registry. It can be either a plain text of username, or a Keyvault Secret ID.
  const RegistryTaskRegistryCredentialCustom({
    this.identity,
    required this.loginServer,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'loginServer': loginServer,
      'password': ?password,
      'username': ?username,
    };
  }

  factory RegistryTaskRegistryCredentialCustom.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredentialCustom(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginServer: pulumi.Input.fromValue(map['loginServer'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

