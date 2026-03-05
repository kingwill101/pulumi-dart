// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_completeness.dart';

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata {
  final pulumi.Input<String>? buildFinishedOn;
  final pulumi.Input<String>? buildInvocationId;
  final pulumi.Input<String>? buildStartedOn;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness>? completeness;
  final pulumi.Input<bool>? reproducible;

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
      'completeness': ?pulumi.Input.mapOptionalInputValue<GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': ?reproducible,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(
      buildFinishedOn: (() { final guardedValue = map['buildFinishedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildInvocationId: (() { final guardedValue = map['buildInvocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildStartedOn: (() { final guardedValue = map['buildStartedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completeness: (() { final guardedValue = map['completeness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reproducible: (() { final guardedValue = map['reproducible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

