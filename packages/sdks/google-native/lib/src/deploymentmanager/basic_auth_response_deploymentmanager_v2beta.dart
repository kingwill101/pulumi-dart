// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Basic Auth used as a credential.
class BasicAuthResponseDeploymentmanagerV2beta {
  final pulumi.Input<String> password;
  final pulumi.Input<String> user;

  /// Creates a new [BasicAuthResponseDeploymentmanagerV2beta].
  /// [password] Required.
  /// [user] Required.
  const BasicAuthResponseDeploymentmanagerV2beta({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'user': user,
    };
  }

  factory BasicAuthResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return BasicAuthResponseDeploymentmanagerV2beta(
      password: pulumi.Input.fromValue(map['password'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
