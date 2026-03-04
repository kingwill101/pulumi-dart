// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_completeness_response.dart';

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse {
  final pulumi.Input<String> buildFinishedOn;
  final pulumi.Input<String> buildInvocationId;
  final pulumi.Input<String> buildStartedOn;
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse>
  completeness;
  final pulumi.Input<bool> reproducible;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse].
  /// [buildFinishedOn] Required.
  /// [buildInvocationId] Required.
  /// [buildStartedOn] Required.
  /// [completeness] Required.
  /// [reproducible] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse({
    required this.buildFinishedOn,
    required this.buildInvocationId,
    required this.buildStartedOn,
    required this.completeness,
    required this.reproducible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildFinishedOn': buildFinishedOn,
      'buildInvocationId': buildInvocationId,
      'buildStartedOn': buildStartedOn,
      'completeness':
          pulumi.Input.mapInputValue<
            GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse,
            Map<String, dynamic>
          >(completeness, (value) => value.toMap()),
      'reproducible': reproducible,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse(
      buildFinishedOn: pulumi.Input.fromValue(map['buildFinishedOn'] as String),
      buildInvocationId: pulumi.Input.fromValue(
        map['buildInvocationId'] as String,
      ),
      buildStartedOn: pulumi.Input.fromValue(map['buildStartedOn'] as String),
      completeness: pulumi.Input.fromValue(
        GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap(
          (map['completeness']! as Map).cast<String, dynamic>(),
        ),
      ),
      reproducible: pulumi.Input.fromValue(map['reproducible'] as bool),
    );
  }
}
