// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret.dart';

/// Parameters to support Username and Password Authentication.
class UserPassword {
  /// Secret version reference containing the password.
  final pulumi.Input<Secret>? password;
  /// Username.
  final pulumi.Input<String>? username;

  /// Creates a new [UserPassword].
  /// [password] Secret version reference containing the password.
  /// [username] Username.
  UserPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory UserPassword.fromMap(Map<String, dynamic> map) {
    return UserPassword(
      password: map['password'] == null ? null : (Secret.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

