// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_rule.dart';
import 'resource_rule.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
class SubjectRulesReviewStatus {
  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  final pulumi.Input<String>? evaluationError;
  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  final pulumi.Input<bool> incomplete;
  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<NonResourceRule>> nonResourceRules;
  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  final pulumi.Input<List<ResourceRule>> resourceRules;

  /// Creates a new [SubjectRulesReviewStatus].
  /// [evaluationError] EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  /// [incomplete] Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  /// [nonResourceRules] NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  /// [resourceRules] ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  SubjectRulesReviewStatus({
    this.evaluationError,
    required this.incomplete,
    required this.nonResourceRules,
    required this.resourceRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationError': ?evaluationError,
      'incomplete': incomplete,
      'nonResourceRules': pulumi.Input.mapInputValue<List<NonResourceRule>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourceRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': pulumi.Input.mapInputValue<List<ResourceRule>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourceRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubjectRulesReviewStatus.fromMap(Map<String, dynamic> map) {
    return SubjectRulesReviewStatus(
      evaluationError: (() { final guardedValue = map['evaluationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incomplete: pulumi.Input.fromValue(map['incomplete'] as bool),
      nonResourceRules: pulumi.Input.fromValue(pulumi.Input.decodeList<NonResourceRule>(map['nonResourceRules']!, (value) => NonResourceRule.fromMap((value as Map).cast<String, dynamic>()))),
      resourceRules: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRule>(map['resourceRules']!, (value) => ResourceRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

