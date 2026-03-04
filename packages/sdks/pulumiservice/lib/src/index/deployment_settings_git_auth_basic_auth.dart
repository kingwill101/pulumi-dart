// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git source settings for a deployment.
class DeploymentSettingsGitAuthBasicAuth {
  /// Password for git basic authentication.
  final pulumi.Input<String> password;

  /// User name for git basic authentication.
  final pulumi.Input<String> username;

  /// Creates a new [DeploymentSettingsGitAuthBasicAuth].
  /// [password] Password for git basic authentication.
  /// [username] User name for git basic authentication.
  DeploymentSettingsGitAuthBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory DeploymentSettingsGitAuthBasicAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitAuthBasicAuth(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
