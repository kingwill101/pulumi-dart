// ignore_for_file: unused_element, unnecessary_cast


/// Username / Password Credentials to connect to guest.
class GuestCredential {
  /// Gets or sets the password to connect with the guest.
  final String password;
  /// Gets or sets username to connect with the guest.
  final String username;

  /// Creates a new [GuestCredential].
  /// [password] Gets or sets the password to connect with the guest.
  /// [username] Gets or sets username to connect with the guest.
  GuestCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GuestCredential.fromMap(Map<String, dynamic> map) {
    return GuestCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

