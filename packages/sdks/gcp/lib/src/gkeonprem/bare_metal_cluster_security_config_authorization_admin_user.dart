// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterSecurityConfigAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final pulumi.Input<String> username;

  /// Creates a new [BareMetalClusterSecurityConfigAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  const BareMetalClusterSecurityConfigAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory BareMetalClusterSecurityConfigAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterSecurityConfigAuthorizationAdminUser(
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

