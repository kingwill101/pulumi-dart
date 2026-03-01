// ignore_for_file: unused_element, unnecessary_cast


class SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1 {
  /// Namespace to evaluate rules for. Required.
  final String? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1].
  /// [namespace] Namespace to evaluate rules for. Required.
  SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

