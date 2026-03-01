// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule_patch.dart';
import 'resource_policy_rule_patch.dart';
import 'subject_patch.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjectsPatch {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRulePatch>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRulePatch>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<SubjectPatch>? subjects;

  /// Creates a new [PolicyRulesWithSubjectsPatch].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjectsPatch({
    this.nonResourceRules,
    this.resourceRules,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?nonResourceRules == null ? null : pulumi.Input.encodeList<NonResourcePolicyRulePatch, Map<String, dynamic>>(nonResourceRules!, (value) => value.toMap()),
      'resourceRules': ?resourceRules == null ? null : pulumi.Input.encodeList<ResourcePolicyRulePatch, Map<String, dynamic>>(resourceRules!, (value) => value.toMap()),
      'subjects': ?subjects == null ? null : pulumi.Input.encodeList<SubjectPatch, Map<String, dynamic>>(subjects!, (value) => value.toMap()),
    };
  }

  factory PolicyRulesWithSubjectsPatch.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjectsPatch(
      nonResourceRules: map['nonResourceRules'] == null ? null : pulumi.Input.decodeList<NonResourcePolicyRulePatch>(map['nonResourceRules'], (value) => NonResourcePolicyRulePatch.fromMap((value as Map).cast<String, dynamic>())),
      resourceRules: map['resourceRules'] == null ? null : pulumi.Input.decodeList<ResourcePolicyRulePatch>(map['resourceRules'], (value) => ResourcePolicyRulePatch.fromMap((value as Map).cast<String, dynamic>())),
      subjects: map['subjects'] == null ? null : pulumi.Input.decodeList<SubjectPatch>(map['subjects'], (value) => SubjectPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

