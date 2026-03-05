// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'completeness_response_containeranalysis_v1alpha1.dart';

/// Other properties of the build.
class MetadataResponseContaineranalysisV1alpha1 {
  /// The timestamp of when the build completed.
  final pulumi.Input<String> buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final pulumi.Input<String> buildInvocationId;
  /// The timestamp of when the build started.
  final pulumi.Input<String> buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<CompletenessResponseContaineranalysisV1alpha1> completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool> reproducible;

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
      'completeness': pulumi.Input.mapInputValue<CompletenessResponseContaineranalysisV1alpha1, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': reproducible,
    };
  }

  factory MetadataResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return MetadataResponseContaineranalysisV1alpha1(
      buildFinishedOn: pulumi.Input.fromValue(map['buildFinishedOn'] as String),
      buildInvocationId: pulumi.Input.fromValue(map['buildInvocationId'] as String),
      buildStartedOn: pulumi.Input.fromValue(map['buildStartedOn'] as String),
      completeness: pulumi.Input.fromValue(CompletenessResponseContaineranalysisV1alpha1.fromMap((map['completeness']! as Map).cast<String, dynamic>())),
      reproducible: pulumi.Input.fromValue(map['reproducible'] as bool),
    );
  }
}

