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
  CertificateContactsContact({required this.email, this.name, this.phone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email, 'name': ?name, 'phone': ?phone};
  }

  factory CertificateContactsContact.fromMap(Map<String, dynamic> map) {
    return CertificateContactsContact(
      email: pulumi.Input.fromValue(map['email'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phone: (() {
        final guardedValue = map['phone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
