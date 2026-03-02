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
  ProviderProxy({
    this.fromEnv,
    this.password,
    this.url,
    this.username,
  });

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
      fromEnv: map['fromEnv'] == null ? null : (map['fromEnv']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

