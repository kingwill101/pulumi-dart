// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to guest.
class GuestCredentialResponse {
  /// Gets or sets username to connect with the guest.
  final pulumi.Input<String> username;

  /// Creates a new [GuestCredentialResponse].
  /// [username] Gets or sets username to connect with the guest.
  GuestCredentialResponse({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory GuestCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GuestCredentialResponse(
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

