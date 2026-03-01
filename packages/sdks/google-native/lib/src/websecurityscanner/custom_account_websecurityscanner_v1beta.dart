// ignore_for_file: unused_element, unnecessary_cast


/// Describes authentication configuration that uses a custom account.
class CustomAccountWebsecurityscannerV1beta {
  /// The login form URL of the website.
  final String loginUrl;
  /// Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final String password;
  /// The user name of the custom account.
  final String username;

  /// Creates a new [CustomAccountWebsecurityscannerV1beta].
  /// [loginUrl] The login form URL of the website.
  /// [password] Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the custom account.
  CustomAccountWebsecurityscannerV1beta({
    required this.loginUrl,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUrl': loginUrl,
      'password': password,
      'username': username,
    };
  }

  factory CustomAccountWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return CustomAccountWebsecurityscannerV1beta(
      loginUrl: map['loginUrl'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

