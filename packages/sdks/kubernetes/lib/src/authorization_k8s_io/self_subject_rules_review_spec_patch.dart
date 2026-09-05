// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpecPatch {
  /// namespace to evaluate rules for. Required.
  final pulumi.Input<String?>? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpecPatch].
  /// [namespace] namespace to evaluate rules for. Required.
  const SelfSubjectRulesReviewSpecPatch({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpecPatch(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
