// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_completeness_containeranalysis_v1alpha1.dart';

/// Other properties of the build.
class SlsaMetadataContaineranalysisV1alpha1 {
  /// The timestamp of when the build completed.
  final pulumi.Input<String>? buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final pulumi.Input<String>? buildInvocationId;
  /// The timestamp of when the build started.
  final pulumi.Input<String>? buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<SlsaCompletenessContaineranalysisV1alpha1>? completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool>? reproducible;

  /// Creates a new [SlsaMetadataContaineranalysisV1alpha1].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  SlsaMetadataContaineranalysisV1alpha1({
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
      'completeness': ?pulumi.Input.mapOptionalInputValue<SlsaCompletenessContaineranalysisV1alpha1, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': ?reproducible,
    };
  }

  factory SlsaMetadataContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaMetadataContaineranalysisV1alpha1(
      buildFinishedOn: map['buildFinishedOn'] == null ? null : (map['buildFinishedOn']! as String).input(),
      buildInvocationId: map['buildInvocationId'] == null ? null : (map['buildInvocationId']! as String).input(),
      buildStartedOn: map['buildStartedOn'] == null ? null : (map['buildStartedOn']! as String).input(),
      completeness: map['completeness'] == null ? null : (SlsaCompletenessContaineranalysisV1alpha1.fromMap((map['completeness']! as Map).cast<String, dynamic>())).input(),
      reproducible: map['reproducible'] == null ? null : (map['reproducible']! as bool).input(),
    );
  }
}

