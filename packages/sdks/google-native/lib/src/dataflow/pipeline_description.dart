// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'display_data.dart';
import 'execution_stage_summary.dart';
import 'transform_summary.dart';

/// A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.
class PipelineDescription {
  /// Pipeline level display data.
  final pulumi.Input<List<DisplayData>>? displayData;
  /// Description of each stage of execution of the pipeline.
  final pulumi.Input<List<ExecutionStageSummary>>? executionPipelineStage;
  /// Description of each transform in the pipeline and collections between them.
  final pulumi.Input<List<TransformSummary>>? originalPipelineTransform;
  /// A hash value of the submitted pipeline portable graph step names if exists.
  final pulumi.Input<String>? stepNamesHash;

  /// Creates a new [PipelineDescription].
  /// [displayData] Pipeline level display data.
  /// [executionPipelineStage] Description of each stage of execution of the pipeline.
  /// [originalPipelineTransform] Description of each transform in the pipeline and collections between them.
  /// [stepNamesHash] A hash value of the submitted pipeline portable graph step names if exists.
  PipelineDescription({
    this.displayData,
    this.executionPipelineStage,
    this.originalPipelineTransform,
    this.stepNamesHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayData': ?pulumi.Input.mapOptionalInputValue<List<DisplayData>, List<Map<String, dynamic>>>(displayData, (value) => pulumi.Input.encodeList<DisplayData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionPipelineStage': ?pulumi.Input.mapOptionalInputValue<List<ExecutionStageSummary>, List<Map<String, dynamic>>>(executionPipelineStage, (value) => pulumi.Input.encodeList<ExecutionStageSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originalPipelineTransform': ?pulumi.Input.mapOptionalInputValue<List<TransformSummary>, List<Map<String, dynamic>>>(originalPipelineTransform, (value) => pulumi.Input.encodeList<TransformSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stepNamesHash': ?stepNamesHash,
    };
  }

  factory PipelineDescription.fromMap(Map<String, dynamic> map) {
    return PipelineDescription(
      displayData: (() { final guardedValue = map['displayData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DisplayData>(guardedValue, (value) => DisplayData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionPipelineStage: (() { final guardedValue = map['executionPipelineStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExecutionStageSummary>(guardedValue, (value) => ExecutionStageSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originalPipelineTransform: (() { final guardedValue = map['originalPipelineTransform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TransformSummary>(guardedValue, (value) => TransformSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stepNamesHash: (() { final guardedValue = map['stepNamesHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

