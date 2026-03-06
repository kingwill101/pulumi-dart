// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'priority_level_configuration_condition_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1 {
  /// `conditions` is the current state of "request-priority".
  final pulumi.Input<List<PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1>>? conditions;

  /// Creates a new [PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1].
  /// [conditions] `conditions` is the current state of "request-priority".
  const PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => PriorityLevelConfigurationConditionFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

