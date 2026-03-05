// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicate {
  /// A map of algorithm to digest of the contents of the SBOM.
  final pulumi.Input<Map<String, String>>? digest;
  /// The location of the SBOM.
  final pulumi.Input<String>? location;
  /// The mime type of the SBOM.
  final pulumi.Input<String>? mimeType;
  /// The person or system referring this predicate to the consumer.
  final pulumi.Input<String>? referrerId;

  /// Creates a new [SbomReferenceIntotoPredicate].
  /// [digest] A map of algorithm to digest of the contents of the SBOM.
  /// [location] The location of the SBOM.
  /// [mimeType] The mime type of the SBOM.
  /// [referrerId] The person or system referring this predicate to the consumer.
  SbomReferenceIntotoPredicate({
    this.digest,
    this.location,
    this.mimeType,
    this.referrerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'location': ?location,
      'mimeType': ?mimeType,
      'referrerId': ?referrerId,
    };
  }

  factory SbomReferenceIntotoPredicate.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicate(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referrerId: (() { final guardedValue = map['referrerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

