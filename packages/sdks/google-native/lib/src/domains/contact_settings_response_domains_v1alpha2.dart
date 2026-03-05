// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_response_domains_v1alpha2.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsResponseDomainsV1alpha2 {
  /// The administrative contact for the `Registration`.
  final pulumi.Input<ContactResponseDomainsV1alpha2> adminContact;
  /// Privacy setting for the contacts associated with the `Registration`.
  final pulumi.Input<String> privacy;
  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final pulumi.Input<ContactResponseDomainsV1alpha2> registrantContact;
  /// The technical contact for the `Registration`.
  final pulumi.Input<ContactResponseDomainsV1alpha2> technicalContact;

  /// Creates a new [ContactSettingsResponseDomainsV1alpha2].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  ContactSettingsResponseDomainsV1alpha2({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': pulumi.Input.mapInputValue<ContactResponseDomainsV1alpha2, Map<String, dynamic>>(adminContact, (value) => value.toMap()),
      'privacy': privacy,
      'registrantContact': pulumi.Input.mapInputValue<ContactResponseDomainsV1alpha2, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'technicalContact': pulumi.Input.mapInputValue<ContactResponseDomainsV1alpha2, Map<String, dynamic>>(technicalContact, (value) => value.toMap()),
    };
  }

  factory ContactSettingsResponseDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return ContactSettingsResponseDomainsV1alpha2(
      adminContact: pulumi.Input.fromValue(ContactResponseDomainsV1alpha2.fromMap((map['adminContact']! as Map).cast<String, dynamic>())),
      privacy: pulumi.Input.fromValue(map['privacy'] as String),
      registrantContact: pulumi.Input.fromValue(ContactResponseDomainsV1alpha2.fromMap((map['registrantContact']! as Map).cast<String, dynamic>())),
      technicalContact: pulumi.Input.fromValue(ContactResponseDomainsV1alpha2.fromMap((map['technicalContact']! as Map).cast<String, dynamic>())),
    );
  }
}

