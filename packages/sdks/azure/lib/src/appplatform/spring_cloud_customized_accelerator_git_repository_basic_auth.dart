// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth {
  /// Specifies the password of git repository basic auth.
  final pulumi.Input<String> password;
  /// Specifies the username of git repository basic auth.
  final pulumi.Input<String> username;

  /// Creates a new [SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth].
  /// [password] Specifies the password of git repository basic auth.
  /// [username] Specifies the username of git repository basic auth.
  SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

