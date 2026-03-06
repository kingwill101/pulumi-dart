// ignore_for_file: unused_element, unnecessary_cast

import 'enrichment_domain_whois_details_response.dart';

/// Result data returned by listWhoisByDomain.
class ListWhoisByDomainResult {
  /// The timestamp at which this record was created
  final String? created;
  /// The domain for this whois record
  final String? domain;
  /// The timestamp at which this record will expire
  final String? expires;
  /// The whois record for a given domain
  final EnrichmentDomainWhoisDetailsResponse? parsedWhois;
  /// The hostname of this registrar's whois server
  final String? server;
  /// The timestamp at which this record was last updated
  final String? updated;

  /// Creates a new [ListWhoisByDomainResult].
  /// [created] The timestamp at which this record was created
  /// [domain] The domain for this whois record
  /// [expires] The timestamp at which this record will expire
  /// [parsedWhois] The whois record for a given domain
  /// [server] The hostname of this registrar's whois server
  /// [updated] The timestamp at which this record was last updated
  const ListWhoisByDomainResult({
    this.created,
    this.domain,
    this.expires,
    this.parsedWhois,
    this.server,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'domain': ?domain,
      'expires': ?expires,
      'parsedWhois': ?parsedWhois?.toMap(),
      'server': ?server,
      'updated': ?updated,
    };
  }

  factory ListWhoisByDomainResult.fromMap(Map<String, dynamic> map) {
    return ListWhoisByDomainResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parsedWhois: (() { final guardedValue = map['parsedWhois']; if (guardedValue == null) return null; return EnrichmentDomainWhoisDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

