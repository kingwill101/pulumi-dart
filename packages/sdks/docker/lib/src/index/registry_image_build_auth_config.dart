// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryImageBuildAuthConfig {
  /// the auth token
  final pulumi.Input<String>? auth;
  /// the user emal
  final pulumi.Input<String>? email;
  /// hostname of the registry
  final pulumi.Input<String> hostName;
  /// the identity token
  final pulumi.Input<String>? identityToken;
  /// the registry password
  final pulumi.Input<String>? password;
  /// the registry token
  final pulumi.Input<String>? registryToken;
  /// the server address
  final pulumi.Input<String>? serverAddress;
  /// the registry user name
  final pulumi.Input<String>? userName;

  /// Creates a new [RegistryImageBuildAuthConfig].
  /// [auth] the auth token
  /// [email] the user emal
  /// [hostName] hostname of the registry
  /// [identityToken] the identity token
  /// [password] the registry password
  /// [registryToken] the registry token
  /// [serverAddress] the server address
  /// [userName] the registry user name
  const RegistryImageBuildAuthConfig({
    this.auth,
    this.email,
    required this.hostName,
    this.identityToken,
    this.password,
    this.registryToken,
    this.serverAddress,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth,
      'email': ?email,
      'hostName': hostName,
      'identityToken': ?identityToken,
      'password': ?password,
      'registryToken': ?registryToken,
      'serverAddress': ?serverAddress,
      'userName': ?userName,
    };
  }

  factory RegistryImageBuildAuthConfig.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuildAuthConfig(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      identityToken: (() { final guardedValue = map['identityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryToken: (() { final guardedValue = map['registryToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddress: (() { final guardedValue = map['serverAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
