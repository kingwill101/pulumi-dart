// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceConfigServerGitSettingHttpBasicAuth {
  /// The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  final pulumi.Input<String> password;
  /// The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  final pulumi.Input<String> username;

  /// Creates a new [SpringCloudServiceConfigServerGitSettingHttpBasicAuth].
  /// [password] The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  /// [username] The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
  const SpringCloudServiceConfigServerGitSettingHttpBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory SpringCloudServiceConfigServerGitSettingHttpBasicAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSettingHttpBasicAuth(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

