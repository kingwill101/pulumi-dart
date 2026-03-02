// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_contact_settings_registrant_contact_postal_address.dart';

class RegistrationContactSettingsRegistrantContact {
  /// Required. Email address of the contact.
  final pulumi.Input<String> email;
  /// Fax number of the contact in international format. For example, "+1-800-555-0123".
  final pulumi.Input<String>? faxNumber;
  /// Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  final pulumi.Input<String> phoneNumber;
  /// Required. Postal address of the contact.
  /// Structure is documented below.
  final pulumi.Input<RegistrationContactSettingsRegistrantContactPostalAddress> postalAddress;

  /// Creates a new [RegistrationContactSettingsRegistrantContact].
  /// [email] Required. Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, "+1-800-555-0123".
  /// [phoneNumber] Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  /// [postalAddress] Required. Postal address of the contact.
  RegistrationContactSettingsRegistrantContact({
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
      'postalAddress': pulumi.Input.mapInputValue<RegistrationContactSettingsRegistrantContactPostalAddress, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
    };
  }

  factory RegistrationContactSettingsRegistrantContact.fromMap(Map<String, dynamic> map) {
    return RegistrationContactSettingsRegistrantContact(
      email: (map['email'] as String).input(),
      faxNumber: map['faxNumber'] == null ? null : (map['faxNumber'] as String).input(),
      phoneNumber: (map['phoneNumber'] as String).input(),
      postalAddress: (RegistrationContactSettingsRegistrantContactPostalAddress.fromMap((map['postalAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

