// ignore_for_file: unused_element, unnecessary_cast


/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpec {
  /// Namespace to evaluate rules for. Required.
  final String? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpec].
  /// [namespace] Namespace to evaluate rules for. Required.
  SelfSubjectRulesReviewSpec({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpec.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpec(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

