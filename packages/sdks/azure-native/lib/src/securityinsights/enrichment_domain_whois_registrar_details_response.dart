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
  const EnrichmentDomainWhoisRegistrarDetailsResponse({
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
      abuseContactEmail: (() { final guardedValue = map['abuseContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      abuseContactPhone: (() { final guardedValue = map['abuseContactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ianaId: (() { final guardedValue = map['ianaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whoisServer: (() { final guardedValue = map['whoisServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

