// ignore_for_file: unused_element, unnecessary_cast


class GetStandardSiteCredential {
  /// The password associated with the username, which can be used to publish to this Logic App.
  final String password;
  /// The username which can be used to publish to this Logic App.
  final String username;

  /// Creates a new [GetStandardSiteCredential].
  /// [password] The password associated with the username, which can be used to publish to this Logic App.
  /// [username] The username which can be used to publish to this Logic App.
  GetStandardSiteCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetStandardSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

