// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postal_address_domains_v1alpha2.dart';

/// Details required for a contact associated with a `Registration`.
class ContactDomainsV1alpha2 {
  /// Email address of the contact.
  final pulumi.Input<String> email;
  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String>? faxNumber;
  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final pulumi.Input<String> phoneNumber;
  /// Postal address of the contact.
  final pulumi.Input<PostalAddressDomainsV1alpha2> postalAddress;

  /// Creates a new [ContactDomainsV1alpha2].
  /// [email] Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [phoneNumber] Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [postalAddress] Postal address of the contact.
  ContactDomainsV1alpha2({
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
      'postalAddress': pulumi.Input.mapInputValue<PostalAddressDomainsV1alpha2, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
    };
  }

  factory ContactDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return ContactDomainsV1alpha2(
      email: (map['email'] as String).input(),
      faxNumber: map['faxNumber'] == null ? null : (map['faxNumber']! as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
      postalAddress: (PostalAddressDomainsV1alpha2.fromMap((map['postalAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

