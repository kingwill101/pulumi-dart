// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postal_address_domains_v1beta1.dart';

/// Details required for a contact associated with a `Registration`.
class ContactDomainsV1beta1 {
  /// Email address of the contact.
  final pulumi.Input<String> email;
  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String>? faxNumber;
  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String> phoneNumber;
  /// Postal address of the contact.
  final pulumi.Input<PostalAddressDomainsV1beta1> postalAddress;

  /// Creates a new [ContactDomainsV1beta1].
  /// [email] Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [phoneNumber] Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [postalAddress] Postal address of the contact.
  const ContactDomainsV1beta1({
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
      'postalAddress': pulumi.Input.mapInputValue<PostalAddressDomainsV1beta1, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
    };
  }

  factory ContactDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ContactDomainsV1beta1(
      email: pulumi.Input.fromValue(map['email'] as String),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      postalAddress: pulumi.Input.fromValue(PostalAddressDomainsV1beta1.fromMap((map['postalAddress']! as Map).cast<String, dynamic>())),
    );
  }
}

