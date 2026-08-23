// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth {
  /// The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  final pulumi.Input<String> password;
  /// The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  final pulumi.Input<String> username;

  /// Creates a new [SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth].
  /// [password] The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  /// [username] The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  const SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
