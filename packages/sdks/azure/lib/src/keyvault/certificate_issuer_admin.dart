// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateIssuerAdmin {
  /// E-mail address of the admin.
  final pulumi.Input<String> emailAddress;
  /// First name of the admin.
  final pulumi.Input<String>? firstName;
  /// Last name of the admin.
  final pulumi.Input<String>? lastName;
  /// Phone number of the admin.
  final pulumi.Input<String>? phone;

  /// Creates a new [CertificateIssuerAdmin].
  /// [emailAddress] E-mail address of the admin.
  /// [firstName] First name of the admin.
  /// [lastName] Last name of the admin.
  /// [phone] Phone number of the admin.
  CertificateIssuerAdmin({
    required this.emailAddress,
    this.firstName,
    this.lastName,
    this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'phone': ?phone,
    };
  }

  factory CertificateIssuerAdmin.fromMap(Map<String, dynamic> map) {
    return CertificateIssuerAdmin(
      emailAddress: (map['emailAddress'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName']! as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName']! as String).input(),
      phone: map['phone'] == null ? null : (map['phone']! as String).input(),
    );
  }
}

