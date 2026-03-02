// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordAlloydbV1alpha {
  /// The initial password for the user.
  final pulumi.Input<String>? password;
  /// The database username.
  final pulumi.Input<String>? user;

  /// Creates a new [UserPasswordAlloydbV1alpha].
  /// [password] The initial password for the user.
  /// [user] The database username.
  UserPasswordAlloydbV1alpha({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory UserPasswordAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return UserPasswordAlloydbV1alpha(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

