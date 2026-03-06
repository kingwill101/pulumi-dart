// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final pulumi.Input<String> username;

  /// Creates a new [VMwareClusterAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  const VMwareClusterAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory VMwareClusterAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAuthorizationAdminUser(
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

