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
  const RegistrationContactSettingsRegistrantContact({
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
      email: pulumi.Input.fromValue(map['email'] as String),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      postalAddress: pulumi.Input.fromValue(RegistrationContactSettingsRegistrantContactPostalAddress.fromMap((map['postalAddress']! as Map).cast<String, dynamic>())),
    );
  }
}
