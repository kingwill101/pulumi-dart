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
  Contact({
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
      email: (map['email'] as String).input(),
      faxNumber: map['faxNumber'] == null ? null : (map['faxNumber']! as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
      postalAddress: (PostalAddress.fromMap((map['postalAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

