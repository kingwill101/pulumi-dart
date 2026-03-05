// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1 {
  /// A map of algorithm to digest of the contents of the SBOM.
  final pulumi.Input<Map<String, String>> digest;
  /// The location of the SBOM.
  final pulumi.Input<String> location;
  /// The mime type of the SBOM.
  final pulumi.Input<String> mimeType;
  /// The person or system referring this predicate to the consumer.
  final pulumi.Input<String> referrerId;

  /// Creates a new [SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1].
  /// [digest] A map of algorithm to digest of the contents of the SBOM.
  /// [location] The location of the SBOM.
  /// [mimeType] The mime type of the SBOM.
  /// [referrerId] The person or system referring this predicate to the consumer.
  SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1({
    required this.digest,
    required this.location,
    required this.mimeType,
    required this.referrerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'location': location,
      'mimeType': mimeType,
      'referrerId': referrerId,
    };
  }

  factory SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1(
      digest: pulumi.Input.fromValue((map['digest'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
      referrerId: pulumi.Input.fromValue(map['referrerId'] as String),
    );
  }
}

