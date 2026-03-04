// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterInitialUser {
  /// The initial password for the user.
  final pulumi.Input<String> password;

  /// The database username.
  final pulumi.Input<String> user;

  /// Creates a new [GetClusterInitialUser].
  /// [password] The initial password for the user.
  /// [user] The database username.
  GetClusterInitialUser({required this.password, required this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'user': user};
  }

  factory GetClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return GetClusterInitialUser(
      password: pulumi.Input.fromValue(map['password'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
