// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final pulumi.Input<String> username;

  /// Creates a new [AwsClusterAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  AwsClusterAuthorizationAdminUser({required this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'username': username};
  }

  factory AwsClusterAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return AwsClusterAuthorizationAdminUser(
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
