// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_response.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsResponse {
  /// The administrative contact for the `Registration`.
  final pulumi.Input<ContactResponse> adminContact;

  /// Privacy setting for the contacts associated with the `Registration`.
  final pulumi.Input<String> privacy;

  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final pulumi.Input<ContactResponse> registrantContact;

  /// The technical contact for the `Registration`.
  final pulumi.Input<ContactResponse> technicalContact;

  /// Creates a new [ContactSettingsResponse].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  ContactSettingsResponse({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact':
          pulumi.Input.mapInputValue<ContactResponse, Map<String, dynamic>>(
            adminContact,
            (value) => value.toMap(),
          ),
      'privacy': privacy,
      'registrantContact':
          pulumi.Input.mapInputValue<ContactResponse, Map<String, dynamic>>(
            registrantContact,
            (value) => value.toMap(),
          ),
      'technicalContact':
          pulumi.Input.mapInputValue<ContactResponse, Map<String, dynamic>>(
            technicalContact,
            (value) => value.toMap(),
          ),
    };
  }

  factory ContactSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ContactSettingsResponse(
      adminContact: pulumi.Input.fromValue(
        ContactResponse.fromMap(
          (map['adminContact']! as Map).cast<String, dynamic>(),
        ),
      ),
      privacy: pulumi.Input.fromValue(map['privacy'] as String),
      registrantContact: pulumi.Input.fromValue(
        ContactResponse.fromMap(
          (map['registrantContact']! as Map).cast<String, dynamic>(),
        ),
      ),
      technicalContact: pulumi.Input.fromValue(
        ContactResponse.fromMap(
          (map['technicalContact']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
