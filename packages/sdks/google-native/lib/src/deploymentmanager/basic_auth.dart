// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Basic Auth used as a credential.
class BasicAuth {
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? user;

  /// Creates a new [BasicAuth].
  /// [password] Optional.
  /// [user] Optional.
  BasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory BasicAuth.fromMap(Map<String, dynamic> map) {
    return BasicAuth(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

