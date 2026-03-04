// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateIssuerAdmin {
  /// E-mail address of the admin.
  final pulumi.Input<String> emailAddress;

  /// First name of the admin.
  final pulumi.Input<String> firstName;

  /// Last name of the admin.
  final pulumi.Input<String> lastName;

  /// Phone number of the admin.
  final pulumi.Input<String> phone;

  /// Creates a new [GetCertificateIssuerAdmin].
  /// [emailAddress] E-mail address of the admin.
  /// [firstName] First name of the admin.
  /// [lastName] Last name of the admin.
  /// [phone] Phone number of the admin.
  GetCertificateIssuerAdmin({
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
    };
  }

  factory GetCertificateIssuerAdmin.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuerAdmin(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      phone: pulumi.Input.fromValue(map['phone'] as String),
    );
  }
}
