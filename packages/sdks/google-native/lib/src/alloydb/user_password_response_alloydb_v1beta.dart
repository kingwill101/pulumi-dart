// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordResponseAlloydbV1beta {
  /// The initial password for the user.
  final pulumi.Input<String> password;
  /// The database username.
  final pulumi.Input<String> user;

  /// Creates a new [UserPasswordResponseAlloydbV1beta].
  /// [password] The initial password for the user.
  /// [user] The database username.
  const UserPasswordResponseAlloydbV1beta({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'user': user,
    };
  }

  factory UserPasswordResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponseAlloydbV1beta(
      password: pulumi.Input.fromValue(map['password'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
