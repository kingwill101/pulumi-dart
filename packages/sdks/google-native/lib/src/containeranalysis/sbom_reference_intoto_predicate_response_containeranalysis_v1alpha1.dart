// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicateResponseContaineranalysisV1alpha1 {
  /// A map of algorithm to digest of the contents of the SBOM.
  final pulumi.Input<Map<String, String>> digest;
  /// The location of the SBOM.
  final pulumi.Input<String> location;
  /// The mime type of the SBOM.
  final pulumi.Input<String> mimeType;
  /// The person or system referring this predicate to the consumer.
  final pulumi.Input<String> referrerId;

  /// Creates a new [SbomReferenceIntotoPredicateResponseContaineranalysisV1alpha1].
  /// [digest] A map of algorithm to digest of the contents of the SBOM.
  /// [location] The location of the SBOM.
  /// [mimeType] The mime type of the SBOM.
  /// [referrerId] The person or system referring this predicate to the consumer.
  SbomReferenceIntotoPredicateResponseContaineranalysisV1alpha1({
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

  factory SbomReferenceIntotoPredicateResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicateResponseContaineranalysisV1alpha1(
      digest: ((map['digest'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      mimeType: (map['mimeType'] as String).input(),
      referrerId: (map['referrerId'] as String).input(),
    );
  }
}

