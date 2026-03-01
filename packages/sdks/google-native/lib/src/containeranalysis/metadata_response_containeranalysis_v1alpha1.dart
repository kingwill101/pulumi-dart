// ignore_for_file: unused_element, unnecessary_cast

import 'completeness_response_containeranalysis_v1alpha1.dart';

/// Other properties of the build.
class MetadataResponseContaineranalysisV1alpha1 {
  /// The timestamp of when the build completed.
  final String buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final String buildInvocationId;
  /// The timestamp of when the build started.
  final String buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final CompletenessResponseContaineranalysisV1alpha1 completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final bool reproducible;

  /// Creates a new [MetadataResponseContaineranalysisV1alpha1].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  MetadataResponseContaineranalysisV1alpha1({
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
      'completeness': completeness.toMap(),
      'reproducible': reproducible,
    };
  }

  factory MetadataResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return MetadataResponseContaineranalysisV1alpha1(
      buildFinishedOn: map['buildFinishedOn'] as String,
      buildInvocationId: map['buildInvocationId'] as String,
      buildStartedOn: map['buildStartedOn'] as String,
      completeness: CompletenessResponseContaineranalysisV1alpha1.fromMap((map['completeness'] as Map).cast<String, dynamic>()),
      reproducible: map['reproducible'] as bool,
    );
  }
}

