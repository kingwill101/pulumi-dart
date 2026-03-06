// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordAlloydbV1beta {
  /// The initial password for the user.
  final pulumi.Input<String>? password;
  /// The database username.
  final pulumi.Input<String>? user;

  /// Creates a new [UserPasswordAlloydbV1beta].
  /// [password] The initial password for the user.
  /// [user] The database username.
  const UserPasswordAlloydbV1beta({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory UserPasswordAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return UserPasswordAlloydbV1beta(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

