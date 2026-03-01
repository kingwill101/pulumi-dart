// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth {
  /// Specifies the password of git repository basic auth.
  final String password;
  /// Specifies the username of git repository basic auth.
  final String username;

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
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

