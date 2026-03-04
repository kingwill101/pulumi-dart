// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderProxy {
  /// When `true` the provider will discover the proxy configuration from environment variables. This is based upon [`http.ProxyFromEnvironment`](https://pkg.go.dev/net/http#ProxyFromEnvironment) and it supports the same environment variables (default: `true`).
  final pulumi.Input<bool>? fromEnv;

  /// Password used for Basic authentication against the Proxy.
  final pulumi.Input<String>? password;

  /// URL used to connect to the Proxy. Accepted schemes are: `http`, `https`, `socks5`.
  final pulumi.Input<String>? url;

  /// Username (or Token) used for Basic authentication against the Proxy.
  final pulumi.Input<String>? username;

  /// Creates a new [ProviderProxy].
  /// [fromEnv] When `true` the provider will discover the proxy configuration from environment variables. This is based upon [`http.ProxyFromEnvironment`](https://pkg.go.dev/net/http#ProxyFromEnvironment) and it supports the same environment variables (default: `true`).
  /// [password] Password used for Basic authentication against the Proxy.
  /// [url] URL used to connect to the Proxy. Accepted schemes are: `http`, `https`, `socks5`.
  /// [username] Username (or Token) used for Basic authentication against the Proxy.
  ProviderProxy({this.fromEnv, this.password, this.url, this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromEnv': ?fromEnv,
      'password': ?password,
      'url': ?url,
      'username': ?username,
    };
  }

  factory ProviderProxy.fromMap(Map<String, dynamic> map) {
    return ProviderProxy(
      fromEnv: (() {
        final guardedValue = map['fromEnv'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
