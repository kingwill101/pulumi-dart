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
    pulumi.Output<String>? authenticationPlugin,
    pulumi.Output<String>? endpoint,
    pulumi.Output<int>? maxConnLifetimeSec,
    pulumi.Output<int>? maxOpenConns,
    pulumi.Output<String>? password,
    pulumi.Output<String>? proxy,
    pulumi.Output<String>? tls,
    pulumi.Output<String>? username,
  }) :
      authenticationPlugin = pulumi.Input.asOptionalInput<String>(authenticationPlugin),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      maxConnLifetimeSec = pulumi.Input.asOptionalInput<int>(maxConnLifetimeSec),
      maxOpenConns = pulumi.Input.asOptionalInput<int>(maxOpenConns),
      password = pulumi.Input.asOptionalInput<String>(password),
      proxy = pulumi.Input.asOptionalInput<String>(proxy),
      tls = pulumi.Input.asOptionalInput<String>(tls),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      authenticationPlugin: map['authenticationPlugin'] == null ? null : pulumi.Output.create<String>(map['authenticationPlugin'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      maxConnLifetimeSec: map['maxConnLifetimeSec'] == null ? null : pulumi.Output.create<int>(map['maxConnLifetimeSec'] as int),
      maxOpenConns: map['maxOpenConns'] == null ? null : pulumi.Output.create<int>(map['maxOpenConns'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<String>(map['proxy'] as String),
      tls: map['tls'] == null ? null : pulumi.Output.create<String>(map['tls'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

