// ignore_for_file: unused_element, unnecessary_cast


class ProviderProxy {
  /// When `true` the provider will discover the proxy configuration from environment variables. This is based upon [`http.ProxyFromEnvironment`](https://pkg.go.dev/net/http#ProxyFromEnvironment) and it supports the same environment variables (default: `true`).
  final bool? fromEnv;
  /// Password used for Basic authentication against the Proxy.
  final String? password;
  /// URL used to connect to the Proxy. Accepted schemes are: `http`, `https`, `socks5`.
  final String? url;
  /// Username (or Token) used for Basic authentication against the Proxy.
  final String? username;

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
      fromEnv: map['fromEnv'] == null ? null : map['fromEnv'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

