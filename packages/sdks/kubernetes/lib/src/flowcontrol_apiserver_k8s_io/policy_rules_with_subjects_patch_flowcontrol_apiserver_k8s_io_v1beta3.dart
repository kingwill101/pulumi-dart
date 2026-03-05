// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_policy_rule_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'resource_policy_rule_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'subject_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  final pulumi.Input<List<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>>? nonResourceRules;
  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  final pulumi.Input<List<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>>? resourceRules;
  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  final pulumi.Input<List<SubjectPatchFlowcontrolApiserverK8sIoV1beta3>>? subjects;

  /// Creates a new [PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [nonResourceRules] `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  /// [resourceRules] `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// [subjects] subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta3({
    this.nonResourceRules,
    this.resourceRules,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>, List<Map<String, dynamic>>>(nonResourceRules, (value) => pulumi.Input.encodeList<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjects': ?pulumi.Input.mapOptionalInputValue<List<SubjectPatchFlowcontrolApiserverK8sIoV1beta3>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<SubjectPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta3(
      nonResourceRules: (() { final guardedValue = map['nonResourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>(guardedValue, (value) => NonResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceRules: (() { final guardedValue = map['resourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3>(guardedValue, (value) => ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subjects: (() { final guardedValue = map['subjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectPatchFlowcontrolApiserverK8sIoV1beta3>(guardedValue, (value) => SubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

