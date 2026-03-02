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
  ThreatIntelligenceExternalReference({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId']! as String).input(),
      hashes: map['hashes'] == null ? null : ((map['hashes']! as Map).cast<String, String>()).input(),
      sourceName: map['sourceName'] == null ? null : (map['sourceName']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

