// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The username/password for a database user. Used for specifying initial users at cluster creation time.
class UserPasswordResponse {
  /// The initial password for the user.
  final pulumi.Input<String> password;
  /// Indicates if the initial_user.password field has been set.
  final pulumi.Input<bool> passwordSet;
  /// The database username.
  final pulumi.Input<String> user;

  /// Creates a new [UserPasswordResponse].
  /// [password] The initial password for the user.
  /// [passwordSet] Indicates if the initial_user.password field has been set.
  /// [user] The database username.
  UserPasswordResponse({
    required this.password,
    required this.passwordSet,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'passwordSet': passwordSet,
      'user': user,
    };
  }

  factory UserPasswordResponse.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponse(
      password: (map['password'] as String).input(),
      passwordSet: (map['passwordSet'] as bool).input(),
      user: (map['user'] as String).input(),
    );
  }
}

