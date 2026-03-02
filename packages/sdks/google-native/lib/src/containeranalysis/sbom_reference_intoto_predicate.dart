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
      digest: map['digest'] == null ? null : ((map['digest']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mimeType: map['mimeType'] == null ? null : (map['mimeType']! as String).input(),
      referrerId: map['referrerId'] == null ? null : (map['referrerId']! as String).input(),
    );
  }
}

