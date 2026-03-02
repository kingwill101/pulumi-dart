// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'completeness.dart';

/// Other properties of the build.
class Metadata {
  /// The timestamp of when the build completed.
  final pulumi.Input<String>? buildFinishedOn;
  /// Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  final pulumi.Input<String>? buildInvocationId;
  /// The timestamp of when the build started.
  final pulumi.Input<String>? buildStartedOn;
  /// Indicates that the builder claims certain fields in this message to be complete.
  final pulumi.Input<Completeness>? completeness;
  /// If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  final pulumi.Input<bool>? reproducible;

  /// Creates a new [Metadata].
  /// [buildFinishedOn] The timestamp of when the build completed.
  /// [buildInvocationId] Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
  /// [buildStartedOn] The timestamp of when the build started.
  /// [completeness] Indicates that the builder claims certain fields in this message to be complete.
  /// [reproducible] If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
  Metadata({
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
      'completeness': ?pulumi.Input.mapOptionalInputValue<Completeness, Map<String, dynamic>>(completeness, (value) => value.toMap()),
      'reproducible': ?reproducible,
    };
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
      buildFinishedOn: map['buildFinishedOn'] == null ? null : (map['buildFinishedOn']! as String).input(),
      buildInvocationId: map['buildInvocationId'] == null ? null : (map['buildInvocationId']! as String).input(),
      buildStartedOn: map['buildStartedOn'] == null ? null : (map['buildStartedOn']! as String).input(),
      completeness: map['completeness'] == null ? null : (Completeness.fromMap((map['completeness']! as Map).cast<String, dynamic>())).input(),
      reproducible: map['reproducible'] == null ? null : (map['reproducible']! as bool).input(),
    );
  }
}

