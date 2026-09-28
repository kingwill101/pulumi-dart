// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials for pulling the executor image from a private container registry.
class DeploymentSettingsExecutorImageCredentials {
  /// Password or access token for authenticating with the container registry.
  final pulumi.Input<String> password;
  /// Username for authenticating with the container registry.
  final pulumi.Input<String> username;

  /// Creates a new [DeploymentSettingsExecutorImageCredentials].
  /// [password] Password or access token for authenticating with the container registry.
  /// [username] Username for authenticating with the container registry.
  const DeploymentSettingsExecutorImageCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory DeploymentSettingsExecutorImageCredentials.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsExecutorImageCredentials(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
