// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_rule_patch.dart';
import 'resource_rule_patch.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
class SubjectRulesReviewStatusPatch {
  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  final pulumi.Input<String>? evaluationError;
  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  final pulumi.Input<bool>? incomplete;
  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<NonResourceRulePatch>>? nonResourceRules;
  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<ResourceRulePatch>>? resourceRules;

  /// Creates a new [SubjectRulesReviewStatusPatch].
  /// [evaluationError] EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  /// [incomplete] Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  /// [nonResourceRules] NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  /// [resourceRules] ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  SubjectRulesReviewStatusPatch({
    this.evaluationError,
    this.incomplete,
    this.nonResourceRules,
    this.resourceRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationError': ?evaluationError,
      'incomplete': ?incomplete,
      'nonResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NonResourceRulePatch>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourceRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<ResourceRulePatch>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourceRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubjectRulesReviewStatusPatch.fromMap(Map<String, dynamic> map) {
    return SubjectRulesReviewStatusPatch(
      evaluationError: map['evaluationError'] == null ? null : (map['evaluationError'] as String).input(),
      incomplete: map['incomplete'] == null ? null : (map['incomplete'] as bool).input(),
      nonResourceRules: map['nonResourceRules'] == null ? null : (pulumi.Input.decodeList<NonResourceRulePatch>(map['nonResourceRules'], (value) => NonResourceRulePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceRules: map['resourceRules'] == null ? null : (pulumi.Input.decodeList<ResourceRulePatch>(map['resourceRules'], (value) => ResourceRulePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

