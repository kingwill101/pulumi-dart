// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1 {
  /// Namespace to evaluate rules for. Required.
  final pulumi.Input<String?>? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1].
  /// [namespace] Namespace to evaluate rules for. Required.
  const SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
