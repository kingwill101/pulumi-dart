// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-only password status.
class PasswordStatusResponseSqladminV1beta4 {
  /// If true, user does not have login privileges.
  final pulumi.Input<bool> locked;
  /// The expiration time of the current password.
  final pulumi.Input<String> passwordExpirationTime;

  /// Creates a new [PasswordStatusResponseSqladminV1beta4].
  /// [locked] If true, user does not have login privileges.
  /// [passwordExpirationTime] The expiration time of the current password.
  const PasswordStatusResponseSqladminV1beta4({
    required this.locked,
    required this.passwordExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': locked,
      'passwordExpirationTime': passwordExpirationTime,
    };
  }

  factory PasswordStatusResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return PasswordStatusResponseSqladminV1beta4(
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      passwordExpirationTime: pulumi.Input.fromValue(map['passwordExpirationTime'] as String),
    );
  }
}
