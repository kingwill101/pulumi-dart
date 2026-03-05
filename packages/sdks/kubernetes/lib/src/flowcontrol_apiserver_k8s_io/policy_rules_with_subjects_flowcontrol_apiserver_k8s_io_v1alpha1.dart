// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'resource_policy_rule_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'subject_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1alpha1 {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final pulumi.Input<List<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final pulumi.Input<List<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final pulumi.Input<List<SubjectFlowcontrolApiserverK8sIoV1alpha1>> subjects;

  /// Creates a new [PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1alpha1].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1alpha1({
    this.nonResourceRules,
    this.resourceRules,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjects': pulumi.Input.mapInputValue<List<SubjectFlowcontrolApiserverK8sIoV1alpha1>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1alpha1(
      nonResourceRules: (() { final guardedValue = map['nonResourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => NonResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceRules: (() { final guardedValue = map['resourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => ResourcePolicyRuleFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subjects: pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectFlowcontrolApiserverK8sIoV1alpha1>(map['subjects']!, (value) => SubjectFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

