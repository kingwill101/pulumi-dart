// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrichment_domain_whois_contacts_response.dart';
import 'enrichment_domain_whois_registrar_details_response.dart';

/// The whois record for a given domain
class EnrichmentDomainWhoisDetailsResponse {
  /// The set of contacts associated with this domain
  final pulumi.Input<EnrichmentDomainWhoisContactsResponse>? contacts;
  /// A list of name servers associated with this domain
  final pulumi.Input<List<String>>? nameServers;
  /// The registrar associated with this domain
  final pulumi.Input<EnrichmentDomainWhoisRegistrarDetailsResponse>? registrar;
  /// The set of status flags for this whois record
  final pulumi.Input<List<String>>? statuses;

  /// Creates a new [EnrichmentDomainWhoisDetailsResponse].
  /// [contacts] The set of contacts associated with this domain
  /// [nameServers] A list of name servers associated with this domain
  /// [registrar] The registrar associated with this domain
  /// [statuses] The set of status flags for this whois record
  EnrichmentDomainWhoisDetailsResponse({
    this.contacts,
    this.nameServers,
    this.registrar,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisContactsResponse, Map<String, dynamic>>(contacts, (value) => value.toMap()),
      'nameServers': ?nameServers,
      'registrar': ?pulumi.Input.mapOptionalInputValue<EnrichmentDomainWhoisRegistrarDetailsResponse, Map<String, dynamic>>(registrar, (value) => value.toMap()),
      'statuses': ?statuses,
    };
  }

  factory EnrichmentDomainWhoisDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisDetailsResponse(
      contacts: map['contacts'] == null ? null : (EnrichmentDomainWhoisContactsResponse.fromMap((map['contacts']! as Map).cast<String, dynamic>())).input(),
      nameServers: map['nameServers'] == null ? null : ((map['nameServers']! as List).cast<String>()).input(),
      registrar: map['registrar'] == null ? null : (EnrichmentDomainWhoisRegistrarDetailsResponse.fromMap((map['registrar']! as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : ((map['statuses']! as List).cast<String>()).input(),
    );
  }
}

