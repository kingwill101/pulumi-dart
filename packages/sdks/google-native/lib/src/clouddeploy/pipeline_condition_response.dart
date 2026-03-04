// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_ready_condition_response.dart';
import 'targets_present_condition_response.dart';
import 'targets_type_condition_response.dart';

/// PipelineCondition contains all conditions relevant to a Delivery Pipeline.
class PipelineConditionResponse {
  /// Details around the Pipeline's overall status.
  final pulumi.Input<PipelineReadyConditionResponse> pipelineReadyCondition;

  /// Details around targets enumerated in the pipeline.
  final pulumi.Input<TargetsPresentConditionResponse> targetsPresentCondition;

  /// Details on the whether the targets enumerated in the pipeline are of the same type.
  final pulumi.Input<TargetsTypeConditionResponse> targetsTypeCondition;

  /// Creates a new [PipelineConditionResponse].
  /// [pipelineReadyCondition] Details around the Pipeline's overall status.
  /// [targetsPresentCondition] Details around targets enumerated in the pipeline.
  /// [targetsTypeCondition] Details on the whether the targets enumerated in the pipeline are of the same type.
  PipelineConditionResponse({
    required this.pipelineReadyCondition,
    required this.targetsPresentCondition,
    required this.targetsTypeCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineReadyCondition':
          pulumi.Input.mapInputValue<
            PipelineReadyConditionResponse,
            Map<String, dynamic>
          >(pipelineReadyCondition, (value) => value.toMap()),
      'targetsPresentCondition':
          pulumi.Input.mapInputValue<
            TargetsPresentConditionResponse,
            Map<String, dynamic>
          >(targetsPresentCondition, (value) => value.toMap()),
      'targetsTypeCondition':
          pulumi.Input.mapInputValue<
            TargetsTypeConditionResponse,
            Map<String, dynamic>
          >(targetsTypeCondition, (value) => value.toMap()),
    };
  }

  factory PipelineConditionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineConditionResponse(
      pipelineReadyCondition: pulumi.Input.fromValue(
        PipelineReadyConditionResponse.fromMap(
          (map['pipelineReadyCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetsPresentCondition: pulumi.Input.fromValue(
        TargetsPresentConditionResponse.fromMap(
          (map['targetsPresentCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetsTypeCondition: pulumi.Input.fromValue(
        TargetsTypeConditionResponse.fromMap(
          (map['targetsTypeCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
