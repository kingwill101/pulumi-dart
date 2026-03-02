// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3 {
  /// `conditions` is a list of the current states of FlowSchema.
  final pulumi.Input<List<FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta3>>? conditions;

  /// Creates a new [FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta3>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta3>(map['conditions']!, (value) => FlowSchemaConditionFlowcontrolApiserverK8sIoV1beta3.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

