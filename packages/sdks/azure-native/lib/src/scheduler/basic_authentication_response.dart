// ignore_for_file: unused_element, unnecessary_cast


class BasicAuthenticationResponse {
  /// Gets or sets the password, return value will always be empty.
  final String? password;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'Basic'.
  final String type;
  /// Gets or sets the username.
  final String? username;

  /// Creates a new [BasicAuthenticationResponse].
  /// [password] Gets or sets the password, return value will always be empty.
  /// [type] Gets or sets the HTTP authentication type.
  /// [username] Gets or sets the username.
  BasicAuthenticationResponse({
    this.password,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'type': type,
      'username': ?username,
    };
  }

  factory BasicAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthenticationResponse(
      password: map['password'] == null ? null : map['password'] as String,
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

