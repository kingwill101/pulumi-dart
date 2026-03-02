// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_rule_authorization_k8s_io_v1beta1.dart';
import 'resource_rule_authorization_k8s_io_v1beta1.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
class SubjectRulesReviewStatusAuthorizationK8sIoV1beta1 {
  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  final pulumi.Input<String>? evaluationError;
  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  final pulumi.Input<bool> incomplete;
  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<NonResourceRuleAuthorizationK8sIoV1beta1>> nonResourceRules;
  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<ResourceRuleAuthorizationK8sIoV1beta1>> resourceRules;

  /// Creates a new [SubjectRulesReviewStatusAuthorizationK8sIoV1beta1].
  /// [evaluationError] EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  /// [incomplete] Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  /// [nonResourceRules] NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  /// [resourceRules] ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  SubjectRulesReviewStatusAuthorizationK8sIoV1beta1({
    this.evaluationError,
    required this.incomplete,
    required this.nonResourceRules,
    required this.resourceRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationError': ?evaluationError,
      'incomplete': incomplete,
      'nonResourceRules': pulumi.Input.mapInputValue<List<NonResourceRuleAuthorizationK8sIoV1beta1>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourceRuleAuthorizationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': pulumi.Input.mapInputValue<List<ResourceRuleAuthorizationK8sIoV1beta1>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourceRuleAuthorizationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubjectRulesReviewStatusAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectRulesReviewStatusAuthorizationK8sIoV1beta1(
      evaluationError: map['evaluationError'] == null ? null : (map['evaluationError']! as String).input(),
      incomplete: (map['incomplete'] as bool).input(),
      nonResourceRules: (pulumi.Input.decodeList<NonResourceRuleAuthorizationK8sIoV1beta1>(map['nonResourceRules'], (value) => NonResourceRuleAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceRules: (pulumi.Input.decodeList<ResourceRuleAuthorizationK8sIoV1beta1>(map['resourceRules'], (value) => ResourceRuleAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

