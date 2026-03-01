// ignore_for_file: unused_element, unnecessary_cast


/// Describes authentication configuration that uses a Google account.
class GoogleAccount {
  /// Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;
  /// The user name of the Google account.
  final String username;

  /// Creates a new [GoogleAccount].
  /// [password] Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the Google account.
  GoogleAccount({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GoogleAccount.fromMap(Map<String, dynamic> map) {
    return GoogleAccount(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

