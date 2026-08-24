// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// The country in which the user lives.
  final pulumi.Input<String?>? country;
  /// User's first name
  final pulumi.Input<String?>? firstName;
  /// User's last name
  final pulumi.Input<String?>? lastName;
  /// User's telephone number
  final pulumi.Input<String?>? telephone;
  /// The zipcode or postal code where the user lives.
  final pulumi.Input<String?>? zipcode;

  /// Creates a new [UserArgs].
  /// [country] The country in which the user lives.
  /// [firstName] User's first name
  /// [lastName] User's last name
  /// [telephone] User's telephone number
  /// [zipcode] The zipcode or postal code where the user lives.
  const UserArgs({
    this.country,
    this.firstName,
    this.lastName,
    this.telephone,
    this.zipcode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?country,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'telephone': ?telephone,
      'zipcode': ?zipcode,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telephone: (() { final guardedValue = map['telephone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipcode: (() { final guardedValue = map['zipcode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
