// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth {
  /// The password used to access the HTTP Basic Authentication Git repository server.
  final pulumi.Input<String> password;
  /// The username used to access the HTTP Basic Authentication Git repository server.
  final pulumi.Input<String> username;

  /// Creates a new [GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth].
  /// [password] The password used to access the HTTP Basic Authentication Git repository server.
  /// [username] The username used to access the HTTP Basic Authentication Git repository server.
  const GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

