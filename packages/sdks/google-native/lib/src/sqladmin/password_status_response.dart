// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-only password status.
class PasswordStatusResponse {
  /// If true, user does not have login privileges.
  final pulumi.Input<bool> locked;
  /// The expiration time of the current password.
  final pulumi.Input<String> passwordExpirationTime;

  /// Creates a new [PasswordStatusResponse].
  /// [locked] If true, user does not have login privileges.
  /// [passwordExpirationTime] The expiration time of the current password.
  PasswordStatusResponse({
    required this.locked,
    required this.passwordExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': locked,
      'passwordExpirationTime': passwordExpirationTime,
    };
  }

  factory PasswordStatusResponse.fromMap(Map<String, dynamic> map) {
    return PasswordStatusResponse(
      locked: (map['locked'] as bool).input(),
      passwordExpirationTime: (map['passwordExpirationTime'] as String).input(),
    );
  }
}

