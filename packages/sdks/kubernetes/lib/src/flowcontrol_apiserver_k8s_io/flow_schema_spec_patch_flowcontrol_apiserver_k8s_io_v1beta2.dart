// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_distinguisher_method_patch_flowcontrol_apiserver_k8s_io_v1beta2.dart';
import 'policy_rules_with_subjects_patch_flowcontrol_apiserver_k8s_io_v1beta2.dart';
import 'priority_level_configuration_reference_patch_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta2 {
  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  final pulumi.Input<FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta2>? distinguisherMethod;
  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  final pulumi.Input<int>? matchingPrecedence;
  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  final pulumi.Input<PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta2>? priorityLevelConfiguration;
  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  final pulumi.Input<List<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta2>>? rules;

  /// Creates a new [FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta2].
  /// [distinguisherMethod] `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  /// [matchingPrecedence] `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  /// [priorityLevelConfiguration] `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  /// [rules] `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  const FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta2({
    this.distinguisherMethod,
    this.matchingPrecedence,
    this.priorityLevelConfiguration,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distinguisherMethod': ?pulumi.Input.mapOptionalInputValue<FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(distinguisherMethod, (value) => value.toMap()),
      'matchingPrecedence': ?matchingPrecedence,
      'priorityLevelConfiguration': ?pulumi.Input.mapOptionalInputValue<PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(priorityLevelConfiguration, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta2>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta2(
      distinguisherMethod: (() { final guardedValue = map['distinguisherMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingPrecedence: (() { final guardedValue = map['matchingPrecedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priorityLevelConfiguration: (() { final guardedValue = map['priorityLevelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta2>(guardedValue, (value) => PolicyRulesWithSubjectsPatchFlowcontrolApiserverK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
