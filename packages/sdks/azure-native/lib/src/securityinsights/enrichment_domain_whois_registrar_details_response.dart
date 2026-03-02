// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The registrar associated with this domain
class EnrichmentDomainWhoisRegistrarDetailsResponse {
  /// This registrar's abuse contact email
  final pulumi.Input<String>? abuseContactEmail;
  /// This registrar's abuse contact phone number
  final pulumi.Input<String>? abuseContactPhone;
  /// This registrar's Internet Assigned Numbers Authority id
  final pulumi.Input<String>? ianaId;
  /// The name of this registrar
  final pulumi.Input<String>? name;
  /// This registrar's URL
  final pulumi.Input<String>? url;
  /// The hostname of this registrar's whois server
  final pulumi.Input<String>? whoisServer;

  /// Creates a new [EnrichmentDomainWhoisRegistrarDetailsResponse].
  /// [abuseContactEmail] This registrar's abuse contact email
  /// [abuseContactPhone] This registrar's abuse contact phone number
  /// [ianaId] This registrar's Internet Assigned Numbers Authority id
  /// [name] The name of this registrar
  /// [url] This registrar's URL
  /// [whoisServer] The hostname of this registrar's whois server
  EnrichmentDomainWhoisRegistrarDetailsResponse({
    this.abuseContactEmail,
    this.abuseContactPhone,
    this.ianaId,
    this.name,
    this.url,
    this.whoisServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuseContactEmail': ?abuseContactEmail,
      'abuseContactPhone': ?abuseContactPhone,
      'ianaId': ?ianaId,
      'name': ?name,
      'url': ?url,
      'whoisServer': ?whoisServer,
    };
  }

  factory EnrichmentDomainWhoisRegistrarDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisRegistrarDetailsResponse(
      abuseContactEmail: map['abuseContactEmail'] == null ? null : (map['abuseContactEmail'] as String).input(),
      abuseContactPhone: map['abuseContactPhone'] == null ? null : (map['abuseContactPhone'] as String).input(),
      ianaId: map['ianaId'] == null ? null : (map['ianaId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      whoisServer: map['whoisServer'] == null ? null : (map['whoisServer'] as String).input(),
    );
  }
}

