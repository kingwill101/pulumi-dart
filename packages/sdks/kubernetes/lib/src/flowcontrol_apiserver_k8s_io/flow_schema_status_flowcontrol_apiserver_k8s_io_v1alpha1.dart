// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1 {
  /// `conditions` is a list of the current states of FlowSchema.
  final List<FlowSchemaConditionFlowcontrolApiserverK8sIoV1alpha1>? conditions;

  /// Creates a new [FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<FlowSchemaConditionFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
    };
  }

  factory FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<FlowSchemaConditionFlowcontrolApiserverK8sIoV1alpha1>(map['conditions'], (value) => FlowSchemaConditionFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

