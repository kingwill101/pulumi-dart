// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobRegistry {
  /// A Managed Identity to use to authenticate with Azure Container Registry.
  final pulumi.Input<String?>? identity;
  /// The name of the Secret that contains the registry login password.
  final pulumi.Input<String?>? passwordSecretName;
  /// The URL of the Azure Container Registry server.
  final pulumi.Input<String> server;
  /// The username to use to authenticate with Azure Container Registry.
  final pulumi.Input<String?>? username;

  /// Creates a new [JobRegistry].
  /// [identity] A Managed Identity to use to authenticate with Azure Container Registry.
  /// [passwordSecretName] The name of the Secret that contains the registry login password.
  /// [server] The URL of the Azure Container Registry server.
  /// [username] The username to use to authenticate with Azure Container Registry.
  const JobRegistry({
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

  factory JobRegistry.fromMap(Map<String, dynamic> map) {
    return JobRegistry(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretName: (() { final guardedValue = map['passwordSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
