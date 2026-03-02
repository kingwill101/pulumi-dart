// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteImageBuildAuthConfig {
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

  /// Creates a new [RemoteImageBuildAuthConfig].
  /// [auth] the auth token
  /// [email] the user emal
  /// [hostName] hostname of the registry
  /// [identityToken] the identity token
  /// [password] the registry password
  /// [registryToken] the registry token
  /// [serverAddress] the server address
  /// [userName] the registry user name
  RemoteImageBuildAuthConfig({
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

  factory RemoteImageBuildAuthConfig.fromMap(Map<String, dynamic> map) {
    return RemoteImageBuildAuthConfig(
      auth: map['auth'] == null ? null : (map['auth']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      hostName: (map['hostName'] as String).input(),
      identityToken: map['identityToken'] == null ? null : (map['identityToken']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      registryToken: map['registryToken'] == null ? null : (map['registryToken']! as String).input(),
      serverAddress: map['serverAddress'] == null ? null : (map['serverAddress']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

