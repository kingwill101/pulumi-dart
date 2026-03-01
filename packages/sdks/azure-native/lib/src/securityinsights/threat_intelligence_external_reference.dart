// ignore_for_file: unused_element, unnecessary_cast


/// Describes external reference
class ThreatIntelligenceExternalReference {
  /// External reference description
  final String? description;
  /// External reference ID
  final String? externalId;
  /// External reference hashes
  final Map<String, String>? hashes;
  /// External reference source name
  final String? sourceName;
  /// External reference URL
  final String? url;

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
      description: map['description'] == null ? null : map['description'] as String,
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      hashes: map['hashes'] == null ? null : (map['hashes'] as Map).cast<String, String>(),
      sourceName: map['sourceName'] == null ? null : map['sourceName'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

