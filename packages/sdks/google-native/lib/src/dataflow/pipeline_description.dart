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
      displayData: map['displayData'] == null ? null : (pulumi.Input.decodeList<DisplayData>(map['displayData']!, (value) => DisplayData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      executionPipelineStage: map['executionPipelineStage'] == null ? null : (pulumi.Input.decodeList<ExecutionStageSummary>(map['executionPipelineStage']!, (value) => ExecutionStageSummary.fromMap((value as Map).cast<String, dynamic>()))).input(),
      originalPipelineTransform: map['originalPipelineTransform'] == null ? null : (pulumi.Input.decodeList<TransformSummary>(map['originalPipelineTransform']!, (value) => TransformSummary.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stepNamesHash: map['stepNamesHash'] == null ? null : (map['stepNamesHash']! as String).input(),
    );
  }
}

