// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to guest.
class GuestCredential {
  /// Gets or sets the password to connect with the guest.
  final pulumi.Input<String> password;
  /// Gets or sets username to connect with the guest.
  final pulumi.Input<String> username;

  /// Creates a new [GuestCredential].
  /// [password] Gets or sets the password to connect with the guest.
  /// [username] Gets or sets username to connect with the guest.
  const GuestCredential({
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
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
