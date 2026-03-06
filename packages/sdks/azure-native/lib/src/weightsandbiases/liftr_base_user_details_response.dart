// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User details for an organization
class LiftrBaseUserDetailsResponse {
  /// Email address of the user
  final pulumi.Input<String>? emailAddress;
  /// First name of the user
  final pulumi.Input<String>? firstName;
  /// Last name of the user
  final pulumi.Input<String>? lastName;
  /// User's phone number
  final pulumi.Input<String>? phoneNumber;
  /// User's principal name
  final pulumi.Input<String>? upn;

  /// Creates a new [LiftrBaseUserDetailsResponse].
  /// [emailAddress] Email address of the user
  /// [firstName] First name of the user
  /// [lastName] Last name of the user
  /// [phoneNumber] User's phone number
  /// [upn] User's principal name
  const LiftrBaseUserDetailsResponse({
    this.emailAddress,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'phoneNumber': ?phoneNumber,
      'upn': ?upn,
    };
  }

  factory LiftrBaseUserDetailsResponse.fromMap(Map<String, dynamic> map) {
    return LiftrBaseUserDetailsResponse(
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upn: (() { final guardedValue = map['upn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

