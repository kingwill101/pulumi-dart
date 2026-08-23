// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition_patch_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta2 {
  /// `conditions` is a list of the current states of FlowSchema.
  final pulumi.Input<List<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta2>>? conditions;

  /// Creates a new [FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta2].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  const FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta2({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta2>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta2(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta2>(guardedValue, (value) => FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
