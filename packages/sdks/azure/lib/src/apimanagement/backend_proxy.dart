// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendProxy {
  /// The password to connect to the proxy server.
  final pulumi.Input<String>? password;
  /// The URL of the proxy server.
  final pulumi.Input<String> url;
  /// The username to connect to the proxy server.
  final pulumi.Input<String> username;

  /// Creates a new [BackendProxy].
  /// [password] The password to connect to the proxy server.
  /// [url] The URL of the proxy server.
  /// [username] The username to connect to the proxy server.
  BackendProxy({
    this.password,
    required this.url,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'url': url,
      'username': username,
    };
  }

  factory BackendProxy.fromMap(Map<String, dynamic> map) {
    return BackendProxy(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

