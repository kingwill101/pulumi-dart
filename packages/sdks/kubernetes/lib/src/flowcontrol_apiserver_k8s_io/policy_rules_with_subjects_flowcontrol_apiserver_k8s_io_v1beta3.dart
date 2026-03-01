// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'resource_policy_rule_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'subject_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3 {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final List<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final List<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final List<SubjectFlowcontrolApiserverK8sIoV1beta3> subjects;

  /// Creates a new [PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?nonResourceRules == null ? null : pulumi.Input.encodeList<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(nonResourceRules!, (value) => value.toMap()),
      'resourceRules': ?resourceRules == null ? null : pulumi.Input.encodeList<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(resourceRules!, (value) => value.toMap()),
      'subjects': pulumi.Input.encodeList<SubjectFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(subjects, (value) => value.toMap()),
    };
  }

  factory PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3(
      nonResourceRules: map['nonResourceRules'] == null ? null : pulumi.Input.decodeList<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3>(map['nonResourceRules'], (value) => NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>())),
      resourceRules: map['resourceRules'] == null ? null : pulumi.Input.decodeList<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3>(map['resourceRules'], (value) => ResourcePolicyRuleFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>())),
      subjects: pulumi.Input.decodeList<SubjectFlowcontrolApiserverK8sIoV1beta3>(map['subjects'], (value) => SubjectFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

