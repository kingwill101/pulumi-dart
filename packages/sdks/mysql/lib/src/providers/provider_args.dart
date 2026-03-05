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
      authenticationPlugin: (() { final guardedValue = map['authenticationPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConnLifetimeSec: (() { final guardedValue = map['maxConnLifetimeSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxOpenConns: (() { final guardedValue = map['maxOpenConns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

