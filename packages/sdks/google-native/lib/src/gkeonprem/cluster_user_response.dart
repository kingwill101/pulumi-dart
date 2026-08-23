// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClusterUser configures user principals for an RBAC policy.
class ClusterUserResponse {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final pulumi.Input<String> username;

  /// Creates a new [ClusterUserResponse].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  const ClusterUserResponse({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory ClusterUserResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUserResponse(
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
