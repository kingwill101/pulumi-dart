// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_completeness.dart';

/// Other properties of the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata {
  /// The timestamp of when the build completed.
  final pulumi.Input<String>? buildFinishedOn;

  /// Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  final pulumi.Input<String>? buildInvocationId;

  /// The timestamp of when the build started.
  final pulumi.Input<String>? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<
    GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness
  >?
  completeness;

  /// If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool>? reproducible;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies this particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running invocation on materials will produce bit-for-bit identical output.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata({
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
      'completeness':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness,
            Map<String, dynamic>
          >(completeness, (value) => value.toMap()),
      'reproducible': ?reproducible,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata(
      buildFinishedOn: (() {
        final guardedValue = map['buildFinishedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildInvocationId: (() {
        final guardedValue = map['buildInvocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildStartedOn: (() {
        final guardedValue = map['buildStartedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      completeness: (() {
        final guardedValue = map['completeness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      reproducible: (() {
        final guardedValue = map['reproducible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
