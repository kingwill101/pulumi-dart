// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_completeness_response.dart';

/// Other properties of the build.
class SlsaMetadataResponse {
  /// The timestamp of when the build completed.
  final pulumi.Input<String> buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final pulumi.Input<String> buildInvocationId;
  /// The timestamp of when the build started.
  final pulumi.Input<String> buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<SlsaCompletenessResponse> completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool> reproducible;

  /// Creates a new [SlsaMetadataResponse].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  const SlsaMetadataResponse({
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
      'completeness': pulumi.Input.mapInputValue<SlsaCompletenessResponse, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': reproducible,
    };
  }

  factory SlsaMetadataResponse.fromMap(Map<String, dynamic> map) {
    return SlsaMetadataResponse(
      buildFinishedOn: pulumi.Input.fromValue(map['buildFinishedOn'] as String),
      buildInvocationId: pulumi.Input.fromValue(map['buildInvocationId'] as String),
      buildStartedOn: pulumi.Input.fromValue(map['buildStartedOn'] as String),
      completeness: pulumi.Input.fromValue(SlsaCompletenessResponse.fromMap((map['completeness']! as Map).cast<String, dynamic>())),
      reproducible: pulumi.Input.fromValue(map['reproducible'] as bool),
    );
  }
}

