// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'priority_level_configuration_condition_patch_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta2 {
  /// `conditions` is the current state of "request-priority".
  final pulumi.Input<List<PriorityLevelConfigurationConditionPatchFlowcontrolApiserverK8sIoV1beta2>>? conditions;

  /// Creates a new [PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta2].
  /// [conditions] `conditions` is the current state of "request-priority".
  PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta2({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PriorityLevelConfigurationConditionPatchFlowcontrolApiserverK8sIoV1beta2>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PriorityLevelConfigurationConditionPatchFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta2(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<PriorityLevelConfigurationConditionPatchFlowcontrolApiserverK8sIoV1beta2>(map['conditions']!, (value) => PriorityLevelConfigurationConditionPatchFlowcontrolApiserverK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

