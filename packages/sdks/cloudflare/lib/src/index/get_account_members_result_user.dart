// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMembersResultUser {
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// User's first name
  final pulumi.Input<String> firstName;
  /// Identifier
  final pulumi.Input<String> id;
  /// User's last name
  final pulumi.Input<String> lastName;
  /// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  final pulumi.Input<bool> twoFactorAuthenticationEnabled;

  /// Creates a new [GetAccountMembersResultUser].
  /// [email] The contact email address of the user.
  /// [firstName] User's first name
  /// [id] Identifier
  /// [lastName] User's last name
  /// [twoFactorAuthenticationEnabled] Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  const GetAccountMembersResultUser({
    required this.email,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.twoFactorAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'twoFactorAuthenticationEnabled': twoFactorAuthenticationEnabled,
    };
  }

  factory GetAccountMembersResultUser.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultUser(
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      twoFactorAuthenticationEnabled: pulumi.Input.fromValue(map['twoFactorAuthenticationEnabled'] as bool),
    );
  }
}
