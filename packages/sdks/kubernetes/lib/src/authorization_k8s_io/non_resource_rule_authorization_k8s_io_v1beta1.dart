// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NonResourceRule holds information that describes a rule for the non-resource
class NonResourceRuleAuthorizationK8sIoV1beta1 {
  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  final pulumi.Input<List<String>?>? nonResourceURLs;
  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  final pulumi.Input<List<String>> verbs;

  /// Creates a new [NonResourceRuleAuthorizationK8sIoV1beta1].
  /// [nonResourceURLs] NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  /// [verbs] Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  const NonResourceRuleAuthorizationK8sIoV1beta1({
    this.nonResourceURLs,
    required this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceURLs': ?nonResourceURLs,
      'verbs': verbs,
    };
  }

  factory NonResourceRuleAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return NonResourceRuleAuthorizationK8sIoV1beta1(
      nonResourceURLs: (() { final guardedValue = map['nonResourceURLs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verbs: pulumi.Input.fromValue((map['verbs'] as List).cast<String>()),
    );
  }
}
