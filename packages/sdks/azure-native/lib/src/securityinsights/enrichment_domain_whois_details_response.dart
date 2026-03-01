// ignore_for_file: unused_element, unnecessary_cast

import 'enrichment_domain_whois_contacts_response.dart';
import 'enrichment_domain_whois_registrar_details_response.dart';

/// The whois record for a given domain
class EnrichmentDomainWhoisDetailsResponse {
  /// The set of contacts associated with this domain
  final EnrichmentDomainWhoisContactsResponse? contacts;
  /// A list of name servers associated with this domain
  final List<String>? nameServers;
  /// The registrar associated with this domain
  final EnrichmentDomainWhoisRegistrarDetailsResponse? registrar;
  /// The set of status flags for this whois record
  final List<String>? statuses;

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
      'contacts': ?contacts == null ? null : contacts!.toMap(),
      'nameServers': ?nameServers,
      'registrar': ?registrar == null ? null : registrar!.toMap(),
      'statuses': ?statuses,
    };
  }

  factory EnrichmentDomainWhoisDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisDetailsResponse(
      contacts: map['contacts'] == null ? null : EnrichmentDomainWhoisContactsResponse.fromMap((map['contacts'] as Map).cast<String, dynamic>()),
      nameServers: map['nameServers'] == null ? null : (map['nameServers'] as List).cast<String>(),
      registrar: map['registrar'] == null ? null : EnrichmentDomainWhoisRegistrarDetailsResponse.fromMap((map['registrar'] as Map).cast<String, dynamic>()),
      statuses: map['statuses'] == null ? null : (map['statuses'] as List).cast<String>(),
    );
  }
}

