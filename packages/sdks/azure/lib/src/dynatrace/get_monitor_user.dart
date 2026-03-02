// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonitorUser {
  /// Country of the user.
  final pulumi.Input<String> country;
  /// Email of the user used by Dynatrace for contacting them if needed.
  final pulumi.Input<String> email;
  /// First name of the user.
  final pulumi.Input<String> firstName;
  /// Last name of the user.
  final pulumi.Input<String> lastName;
  /// phone number of the user by Dynatrace for contacting them if needed.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [GetMonitorUser].
  /// [country] Country of the user.
  /// [email] Email of the user used by Dynatrace for contacting them if needed.
  /// [firstName] First name of the user.
  /// [lastName] Last name of the user.
  /// [phoneNumber] phone number of the user by Dynatrace for contacting them if needed.
  GetMonitorUser({
    required this.country,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
    };
  }

  factory GetMonitorUser.fromMap(Map<String, dynamic> map) {
    return GetMonitorUser(
      country: (map['country'] as String).input(),
      email: (map['email'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
    );
  }
}

