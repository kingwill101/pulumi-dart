// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountMemberUser {
  /// The contact email address of the user.
  final pulumi.Input<String?>? email;
  /// User's first name
  final pulumi.Input<String?>? firstName;
  /// Identifier
  final pulumi.Input<String?>? id;
  /// User's last name
  final pulumi.Input<String?>? lastName;
  /// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  final pulumi.Input<bool?>? twoFactorAuthenticationEnabled;

  /// Creates a new [AccountMemberUser].
  /// [email] The contact email address of the user.
  /// [firstName] User's first name
  /// [id] Identifier
  /// [lastName] User's last name
  /// [twoFactorAuthenticationEnabled] Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  const AccountMemberUser({
    this.email,
    this.firstName,
    this.id,
    this.lastName,
    this.twoFactorAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'firstName': ?firstName,
      'id': ?id,
      'lastName': ?lastName,
      'twoFactorAuthenticationEnabled': ?twoFactorAuthenticationEnabled,
    };
  }

  factory AccountMemberUser.fromMap(Map<String, dynamic> map) {
    return AccountMemberUser(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twoFactorAuthenticationEnabled: (() { final guardedValue = map['twoFactorAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
