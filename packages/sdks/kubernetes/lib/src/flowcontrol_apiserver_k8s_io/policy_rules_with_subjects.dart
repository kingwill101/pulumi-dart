// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule.dart';
import 'resource_policy_rule.dart';
import 'subject.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjects {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final pulumi.Input<List<NonResourcePolicyRule>>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final pulumi.Input<List<ResourcePolicyRule>>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final pulumi.Input<List<Subject>> subjects;

  /// Creates a new [PolicyRulesWithSubjects].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjects({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NonResourcePolicyRule>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourcePolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyRule>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourcePolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjects': pulumi.Input.mapInputValue<List<Subject>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyRulesWithSubjects.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjects(
      nonResourceRules: (() { final guardedValue = map['nonResourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonResourcePolicyRule>(guardedValue, (value) => NonResourcePolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceRules: (() { final guardedValue = map['resourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicyRule>(guardedValue, (value) => ResourcePolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subjects: pulumi.Input.fromValue(pulumi.Input.decodeList<Subject>(map['subjects']!, (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

