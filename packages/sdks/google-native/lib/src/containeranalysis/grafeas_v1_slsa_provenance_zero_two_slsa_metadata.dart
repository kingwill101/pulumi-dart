// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_completeness.dart';

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata {
  final String? buildFinishedOn;
  final String? buildInvocationId;
  final String? buildStartedOn;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness? completeness;
  final bool? reproducible;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata].
  /// [buildFinishedOn] Optional.
  /// [buildInvocationId] Optional.
  /// [buildStartedOn] Optional.
  /// [completeness] Optional.
  /// [reproducible] Optional.
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildFinishedOn': ?buildFinishedOn,
      'buildInvocationId': ?buildInvocationId,
      'buildStartedOn': ?buildStartedOn,
      'completeness': ?completeness == null ? null : completeness!.toMap(),
      'reproducible': ?reproducible,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(
      buildFinishedOn: map['buildFinishedOn'] == null ? null : map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] == null ? null : map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] == null ? null : map['buildStartedOn'] as String,
      completeness: map['completeness'] == null ? null : GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap((map['completeness'] as Map).cast<String, dynamic>()),
      reproducible: map['reproducible'] == null ? null : map['reproducible'] as bool,
    );
  }
}

