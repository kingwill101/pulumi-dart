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
  const CertificateIssuerAdmin({
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
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
