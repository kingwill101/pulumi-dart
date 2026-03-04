// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPassword {
  /// The initial password for the user.
  final pulumi.Input<String>? password;

  /// The database username.
  final pulumi.Input<String>? user;

  /// Creates a new [UserPassword].
  /// [password] The initial password for the user.
  /// [user] The database username.
  UserPassword({this.password, this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'user': ?user};
  }

  factory UserPassword.fromMap(Map<String, dynamic> map) {
    return UserPassword(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
