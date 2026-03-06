// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_distinguisher_method_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'policy_rules_with_subjects_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'priority_level_configuration_reference_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3 {
  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  final pulumi.Input<FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3>? distinguisherMethod;
  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  final pulumi.Input<int>? matchingPrecedence;
  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  final pulumi.Input<PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta3> priorityLevelConfiguration;
  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  final pulumi.Input<List<PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3>>? rules;

  /// Creates a new [FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3].
  /// [distinguisherMethod] `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  /// [matchingPrecedence] `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  /// [priorityLevelConfiguration] `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  /// [rules] `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  const FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3({
    this.distinguisherMethod,
    this.matchingPrecedence,
    required this.priorityLevelConfiguration,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distinguisherMethod': ?pulumi.Input.mapOptionalInputValue<FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(distinguisherMethod, (value) => value.toMap()),
      'matchingPrecedence': ?matchingPrecedence,
      'priorityLevelConfiguration': pulumi.Input.mapInputValue<PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(priorityLevelConfiguration, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3(
      distinguisherMethod: (() { final guardedValue = map['distinguisherMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingPrecedence: (() { final guardedValue = map['matchingPrecedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priorityLevelConfiguration: pulumi.Input.fromValue(PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta3.fromMap((map['priorityLevelConfiguration']! as Map).cast<String, dynamic>())),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3>(guardedValue, (value) => PolicyRulesWithSubjectsFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

