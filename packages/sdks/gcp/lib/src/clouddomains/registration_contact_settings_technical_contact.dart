// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_contact_settings_technical_contact_postal_address.dart';

class RegistrationContactSettingsTechnicalContact {
  /// Required. Email address of the contact.
  final pulumi.Input<String> email;
  /// Fax number of the contact in international format. For example, "+1-800-555-0123".
  final pulumi.Input<String?>? faxNumber;
  /// Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  final pulumi.Input<String> phoneNumber;
  /// Required. Postal address of the contact.
  /// Structure is documented below.
  final pulumi.Input<RegistrationContactSettingsTechnicalContactPostalAddress> postalAddress;

  /// Creates a new [RegistrationContactSettingsTechnicalContact].
  /// [email] Required. Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, "+1-800-555-0123".
  /// [phoneNumber] Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  /// [postalAddress] Required. Postal address of the contact.
  const RegistrationContactSettingsTechnicalContact({
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
      'postalAddress': pulumi.Input.mapInputValue<RegistrationContactSettingsTechnicalContactPostalAddress, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
    };
  }

  factory RegistrationContactSettingsTechnicalContact.fromMap(Map<String, dynamic> map) {
    return RegistrationContactSettingsTechnicalContact(
      email: pulumi.Input.fromValue(map['email'] as String),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
      postalAddress: pulumi.Input.fromValue(RegistrationContactSettingsTechnicalContactPostalAddress.fromMap((map['postalAddress']! as Map).cast<String, dynamic>())),
    );
  }
}
