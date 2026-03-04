// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpec {
  /// Namespace to evaluate rules for. Required.
  final pulumi.Input<String>? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpec].
  /// [namespace] Namespace to evaluate rules for. Required.
  SelfSubjectRulesReviewSpec({this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': ?namespace};
  }

  factory SelfSubjectRulesReviewSpec.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpec(
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
