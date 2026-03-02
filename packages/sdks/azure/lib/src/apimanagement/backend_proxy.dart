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
      password: map['password'] == null ? null : (map['password']! as String).input(),
      url: (map['url'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

