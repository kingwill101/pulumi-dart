// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postal_address.dart';

/// Details required for a contact associated with a `Registration`.
class Contact {
  /// Email address of the contact.
  final pulumi.Input<String> email;
  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String>? faxNumber;
  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String> phoneNumber;
  /// Postal address of the contact.
  final pulumi.Input<PostalAddress> postalAddress;

  /// Creates a new [Contact].
  /// [email] Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [phoneNumber] Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [postalAddress] Postal address of the contact.
  const Contact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'faxNumber': ?faxNumber,
      'phoneNumber': phoneNumber,
      'postalAddress': pulumi.Input.mapInputValue<PostalAddress, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      email: pulumi.Input.fromValue(map['email'] as String),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      postalAddress: pulumi.Input.fromValue(PostalAddress.fromMap((map['postalAddress']! as Map).cast<String, dynamic>())),
    );
  }
}

