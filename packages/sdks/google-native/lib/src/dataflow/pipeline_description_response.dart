// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'display_data_response.dart';
import 'execution_stage_summary_response.dart';
import 'transform_summary_response.dart';

/// A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.
class PipelineDescriptionResponse {
  /// Pipeline level display data.
  final List<DisplayDataResponse> displayData;
  /// Description of each stage of execution of the pipeline.
  final List<ExecutionStageSummaryResponse> executionPipelineStage;
  /// Description of each transform in the pipeline and collections between them.
  final List<TransformSummaryResponse> originalPipelineTransform;
  /// A hash value of the submitted pipeline portable graph step names if exists.
  final String stepNamesHash;

  /// Creates a new [PipelineDescriptionResponse].
  /// [displayData] Pipeline level display data.
  /// [executionPipelineStage] Description of each stage of execution of the pipeline.
  /// [originalPipelineTransform] Description of each transform in the pipeline and collections between them.
  /// [stepNamesHash] A hash value of the submitted pipeline portable graph step names if exists.
  PipelineDescriptionResponse({
    required this.displayData,
    required this.executionPipelineStage,
    required this.originalPipelineTransform,
    required this.stepNamesHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayData': pulumi.Input.encodeList<DisplayDataResponse, Map<String, dynamic>>(displayData, (value) => value.toMap()),
      'executionPipelineStage': pulumi.Input.encodeList<ExecutionStageSummaryResponse, Map<String, dynamic>>(executionPipelineStage, (value) => value.toMap()),
      'originalPipelineTransform': pulumi.Input.encodeList<TransformSummaryResponse, Map<String, dynamic>>(originalPipelineTransform, (value) => value.toMap()),
      'stepNamesHash': stepNamesHash,
    };
  }

  factory PipelineDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineDescriptionResponse(
      displayData: pulumi.Input.decodeList<DisplayDataResponse>(map['displayData'], (value) => DisplayDataResponse.fromMap((value as Map).cast<String, dynamic>())),
      executionPipelineStage: pulumi.Input.decodeList<ExecutionStageSummaryResponse>(map['executionPipelineStage'], (value) => ExecutionStageSummaryResponse.fromMap((value as Map).cast<String, dynamic>())),
      originalPipelineTransform: pulumi.Input.decodeList<TransformSummaryResponse>(map['originalPipelineTransform'], (value) => TransformSummaryResponse.fromMap((value as Map).cast<String, dynamic>())),
      stepNamesHash: map['stepNamesHash'] as String,
    );
  }
}

