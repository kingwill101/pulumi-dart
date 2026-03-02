// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<String>? authenticationPlugin;
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<int>? maxConnLifetimeSec;
  final pulumi.Input<int>? maxOpenConns;
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? proxy;
  final pulumi.Input<String>? tls;
  final pulumi.Input<String>? username;

  /// Creates a new [ProviderArgs].
  /// [authenticationPlugin] Optional.
  /// [endpoint] Optional.
  /// [maxConnLifetimeSec] Optional.
  /// [maxOpenConns] Optional.
  /// [password] Optional.
  /// [proxy] Optional.
  /// [tls] Optional.
  /// [username] Optional.
  ProviderArgs({
    this.authenticationPlugin,
    this.endpoint,
    this.maxConnLifetimeSec,
    this.maxOpenConns,
    this.password,
    this.proxy,
    this.tls,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationPlugin': ?authenticationPlugin,
      'endpoint': ?endpoint,
      'maxConnLifetimeSec': ?maxConnLifetimeSec,
      'maxOpenConns': ?maxOpenConns,
      'password': ?password,
      'proxy': ?proxy,
      'tls': ?tls,
      'username': ?username,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      authenticationPlugin: map['authenticationPlugin'] == null ? null : (map['authenticationPlugin'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      maxConnLifetimeSec: map['maxConnLifetimeSec'] == null ? null : (map['maxConnLifetimeSec'] as int).input(),
      maxOpenConns: map['maxOpenConns'] == null ? null : (map['maxOpenConns'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      proxy: map['proxy'] == null ? null : (map['proxy'] as String).input(),
      tls: map['tls'] == null ? null : (map['tls'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

