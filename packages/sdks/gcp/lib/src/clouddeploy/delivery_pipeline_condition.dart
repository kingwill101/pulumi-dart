// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_condition_pipeline_ready_condition.dart';
import 'delivery_pipeline_condition_targets_present_condition.dart';
import 'delivery_pipeline_condition_targets_type_condition.dart';

class DeliveryPipelineCondition {
  /// Details around the Pipeline's overall status.
  final pulumi.Input<List<DeliveryPipelineConditionPipelineReadyCondition>>? pipelineReadyConditions;
  /// Details around targets enumerated in the pipeline.
  final pulumi.Input<List<DeliveryPipelineConditionTargetsPresentCondition>>? targetsPresentConditions;
  /// Details on the whether the targets enumerated in the pipeline are of the same type.
  final pulumi.Input<List<DeliveryPipelineConditionTargetsTypeCondition>>? targetsTypeConditions;

  /// Creates a new [DeliveryPipelineCondition].
  /// [pipelineReadyConditions] Details around the Pipeline's overall status.
  /// [targetsPresentConditions] Details around targets enumerated in the pipeline.
  /// [targetsTypeConditions] Details on the whether the targets enumerated in the pipeline are of the same type.
  DeliveryPipelineCondition({
    this.pipelineReadyConditions,
    this.targetsPresentConditions,
    this.targetsTypeConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineReadyConditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineConditionPipelineReadyCondition>, List<Map<String, dynamic>>>(pipelineReadyConditions, (value) => pulumi.Input.encodeList<DeliveryPipelineConditionPipelineReadyCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetsPresentConditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineConditionTargetsPresentCondition>, List<Map<String, dynamic>>>(targetsPresentConditions, (value) => pulumi.Input.encodeList<DeliveryPipelineConditionTargetsPresentCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetsTypeConditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineConditionTargetsTypeCondition>, List<Map<String, dynamic>>>(targetsTypeConditions, (value) => pulumi.Input.encodeList<DeliveryPipelineConditionTargetsTypeCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineCondition(
      pipelineReadyConditions: map['pipelineReadyConditions'] == null ? null : (pulumi.Input.decodeList<DeliveryPipelineConditionPipelineReadyCondition>(map['pipelineReadyConditions']!, (value) => DeliveryPipelineConditionPipelineReadyCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetsPresentConditions: map['targetsPresentConditions'] == null ? null : (pulumi.Input.decodeList<DeliveryPipelineConditionTargetsPresentCondition>(map['targetsPresentConditions']!, (value) => DeliveryPipelineConditionTargetsPresentCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetsTypeConditions: map['targetsTypeConditions'] == null ? null : (pulumi.Input.decodeList<DeliveryPipelineConditionTargetsTypeCondition>(map['targetsTypeConditions']!, (value) => DeliveryPipelineConditionTargetsTypeCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

