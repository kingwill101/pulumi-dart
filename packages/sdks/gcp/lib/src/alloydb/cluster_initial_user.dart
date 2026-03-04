// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterInitialUser {
  /// The initial password for the user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;

  /// The database username.
  final pulumi.Input<String>? user;

  /// Creates a new [ClusterInitialUser].
  /// [password] The initial password for the user.
  /// [user] The database username.
  ClusterInitialUser({this.password, this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'user': ?user};
  }

  factory ClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return ClusterInitialUser(
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
