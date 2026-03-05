// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta1 {
  /// `conditions` is a list of the current states of FlowSchema.
  final pulumi.Input<List<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta1>>? conditions;

  /// Creates a new [FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta1].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta1(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta1>(guardedValue, (value) => FlowSchemaConditionPatchFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

