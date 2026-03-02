// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User details for an organization
class LiftrBaseUserDetails {
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

  /// Creates a new [LiftrBaseUserDetails].
  /// [emailAddress] Email address of the user
  /// [firstName] First name of the user
  /// [lastName] Last name of the user
  /// [phoneNumber] User's phone number
  /// [upn] User's principal name
  LiftrBaseUserDetails({
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

  factory LiftrBaseUserDetails.fromMap(Map<String, dynamic> map) {
    return LiftrBaseUserDetails(
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress']! as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName']! as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName']! as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber']! as String).input(),
      upn: map['upn'] == null ? null : (map['upn']! as String).input(),
    );
  }
}

