// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact.dart';
import 'contact_settings_privacy.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettings {
  /// The administrative contact for the `Registration`.
  final pulumi.Input<Contact> adminContact;
  /// Privacy setting for the contacts associated with the `Registration`.
  final pulumi.Input<ContactSettingsPrivacy> privacy;
  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final pulumi.Input<Contact> registrantContact;
  /// The technical contact for the `Registration`.
  final pulumi.Input<Contact> technicalContact;

  /// Creates a new [ContactSettings].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  const ContactSettings({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'privacy': pulumi.Input.mapInputValue<ContactSettingsPrivacy, String>(privacy, (value) => value.wireValue),
      'registrantContact': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'technicalContact': pulumi.Input.mapInputValue<Contact, Map<String, dynamic>>(technicalContact, (value) => value.toMap()),
    };
  }

  factory ContactSettings.fromMap(Map<String, dynamic> map) {
    return ContactSettings(
      adminContact: pulumi.Input.fromValue(Contact.fromMap((map['adminContact']! as Map).cast<String, dynamic>())),
      privacy: pulumi.Input.fromValue(ContactSettingsPrivacy.fromValue(map['privacy']! as String)),
      registrantContact: pulumi.Input.fromValue(Contact.fromMap((map['registrantContact']! as Map).cast<String, dynamic>())),
      technicalContact: pulumi.Input.fromValue(Contact.fromMap((map['technicalContact']! as Map).cast<String, dynamic>())),
    );
  }
}
