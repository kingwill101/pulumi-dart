// ignore_for_file: unused_element, unnecessary_cast


class GetAppServiceSiteCredential {
  final String password;
  final String username;

  /// Creates a new [GetAppServiceSiteCredential].
  /// [password] Required.
  /// [username] Required.
  GetAppServiceSiteCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetAppServiceSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

