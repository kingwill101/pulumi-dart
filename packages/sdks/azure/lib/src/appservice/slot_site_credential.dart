// ignore_for_file: unused_element, unnecessary_cast


class SlotSiteCredential {
  /// The password associated with the username, which can be used to publish to this App Service.
  final String? password;
  /// The username which can be used to publish to this App Service
  final String? username;

  /// Creates a new [SlotSiteCredential].
  /// [password] The password associated with the username, which can be used to publish to this App Service.
  /// [username] The username which can be used to publish to this App Service
  SlotSiteCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory SlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return SlotSiteCredential(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

