// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreatIntelligenceIndicatorExternalReference {
  /// The description of the external reference of the Threat Intelligence Indicator.
  final pulumi.Input<String>? description;
  /// The list of hashes of the external reference of the Threat Intelligence Indicator.
  final pulumi.Input<Map<String, String>>? hashes;
  /// The ID of the Sentinel Threat Intelligence Indicator.
  final pulumi.Input<String>? id;
  /// The source name of the external reference of the Threat Intelligence Indicator.
  final pulumi.Input<String>? sourceName;
  /// The url of the external reference of the Threat Intelligence Indicator.
  final pulumi.Input<String>? url;

  /// Creates a new [ThreatIntelligenceIndicatorExternalReference].
  /// [description] The description of the external reference of the Threat Intelligence Indicator.
  /// [hashes] The list of hashes of the external reference of the Threat Intelligence Indicator.
  /// [id] The ID of the Sentinel Threat Intelligence Indicator.
  /// [sourceName] The source name of the external reference of the Threat Intelligence Indicator.
  /// [url] The url of the external reference of the Threat Intelligence Indicator.
  ThreatIntelligenceIndicatorExternalReference({
    this.description,
    this.hashes,
    this.id,
    this.sourceName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hashes': ?hashes,
      'id': ?id,
      'sourceName': ?sourceName,
      'url': ?url,
    };
  }

  factory ThreatIntelligenceIndicatorExternalReference.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorExternalReference(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashes: (() { final guardedValue = map['hashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

