// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes external reference
class ThreatIntelligenceExternalReference {
  /// External reference description
  final pulumi.Input<String>? description;
  /// External reference ID
  final pulumi.Input<String>? externalId;
  /// External reference hashes
  final pulumi.Input<Map<String, String>>? hashes;
  /// External reference source name
  final pulumi.Input<String>? sourceName;
  /// External reference URL
  final pulumi.Input<String>? url;

  /// Creates a new [ThreatIntelligenceExternalReference].
  /// [description] External reference description
  /// [externalId] External reference ID
  /// [hashes] External reference hashes
  /// [sourceName] External reference source name
  /// [url] External reference URL
  const ThreatIntelligenceExternalReference({
    this.description,
    this.externalId,
    this.hashes,
    this.sourceName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalId': ?externalId,
      'hashes': ?hashes,
      'sourceName': ?sourceName,
      'url': ?url,
    };
  }

  factory ThreatIntelligenceExternalReference.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceExternalReference(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashes: (() { final guardedValue = map['hashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

