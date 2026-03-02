// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateContactsContact {
  /// E-mail address of the contact.
  final pulumi.Input<String> email;
  /// Name of the contact.
  final pulumi.Input<String>? name;
  /// Phone number of the contact.
  final pulumi.Input<String>? phone;

  /// Creates a new [CertificateContactsContact].
  /// [email] E-mail address of the contact.
  /// [name] Name of the contact.
  /// [phone] Phone number of the contact.
  CertificateContactsContact({
    required this.email,
    this.name,
    this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': ?name,
      'phone': ?phone,
    };
  }

  factory CertificateContactsContact.fromMap(Map<String, dynamic> map) {
    return CertificateContactsContact(
      email: (map['email'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      phone: map['phone'] == null ? null : (map['phone']! as String).input(),
    );
  }
}

