// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrichment_domain_whois_contact_response.dart';

/// The set of contacts associated with this domain
class EnrichmentDomainWhoisContactsResponse {
  /// The admin contact for this whois record
  final pulumi.Input<EnrichmentDomainWhoisContactResponse>? admin;
  /// The billing contact for this whois record
  final pulumi.Input<EnrichmentDomainWhoisContactResponse>? billing;
  /// The registrant contact for this whois record
  final pulumi.Input<EnrichmentDomainWhoisContactResponse>? registrant;
  /// The technical contact for this whois record
  final pulumi.Input<EnrichmentDomainWhoisContactResponse>? tech;

  /// Creates a new [EnrichmentDomainWhoisContactsResponse].
  /// [admin] The admin contact for this whois record
  /// [billing] The billing contact for this whois record
  /// [registrant] The registrant contact for this whois record
  /// [tech] The technical contact for this whois record
  EnrichmentDomainWhoisContactsResponse({
    this.admin,
    this.billing,
    this.registrant,
    this.tech,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisContactResponse, Map<String, dynamic>>(admin, (value) => value.toMap()),
      'billing': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisContactResponse, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'registrant': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisContactResponse, Map<String, dynamic>>(registrant, (value) => value.toMap()),
      'tech': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisContactResponse, Map<String, dynamic>>(tech, (value) => value.toMap()),
    };
  }

  factory EnrichmentDomainWhoisContactsResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisContactsResponse(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrichmentDomainWhoisContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billing: (() { final guardedValue = map['billing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrichmentDomainWhoisContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrant: (() { final guardedValue = map['registrant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrichmentDomainWhoisContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tech: (() { final guardedValue = map['tech']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnrichmentDomainWhoisContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

