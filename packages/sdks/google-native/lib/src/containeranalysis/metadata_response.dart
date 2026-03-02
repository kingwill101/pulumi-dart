// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'completeness_response.dart';

/// Other properties of the build.
class MetadataResponse {
  /// The timestamp of when the build completed.
  final pulumi.Input<String> buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final pulumi.Input<String> buildInvocationId;
  /// The timestamp of when the build started.
  final pulumi.Input<String> buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<CompletenessResponse> completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool> reproducible;

  /// Creates a new [MetadataResponse].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  MetadataResponse({
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
      'completeness': pulumi.Input.mapInputValue<CompletenessResponse, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': reproducible,
    };
  }

  factory MetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetadataResponse(
      buildFinishedOn: (map['buildFinishedOn'] as String).input(),
      buildInvocationId: (map['buildInvocationId'] as String).input(),
      buildStartedOn: (map['buildStartedOn'] as String).input(),
      completeness: (CompletenessResponse.fromMap((map['completeness'] as Map).cast<String, dynamic>())).input(),
      reproducible: (map['reproducible'] as bool).input(),
    );
  }
}

