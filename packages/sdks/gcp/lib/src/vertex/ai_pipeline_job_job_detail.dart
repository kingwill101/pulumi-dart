// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_job_detail_pipeline_context.dart';
import 'ai_pipeline_job_job_detail_pipeline_run_context.dart';
import 'ai_pipeline_job_job_detail_task_detail.dart';

class AiPipelineJobJobDetail {
  /// (Output)
  /// The context of the pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobJobDetailPipelineContext>?>? pipelineContexts;
  /// (Output)
  /// The context of the current pipeline run.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobJobDetailPipelineRunContext>?>? pipelineRunContexts;
  /// (Output)
  /// The runtime details of the tasks under the pipeline.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobJobDetailTaskDetail>?>? taskDetails;

  /// Creates a new [AiPipelineJobJobDetail].
  /// [pipelineContexts] (Output)
  /// [pipelineRunContexts] (Output)
  /// [taskDetails] (Output)
  const AiPipelineJobJobDetail({
    this.pipelineContexts,
    this.pipelineRunContexts,
    this.taskDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineContexts': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobJobDetailPipelineContext>, List<Map<String, dynamic>>>(pipelineContexts, (value) => pulumi.Input.encodeList<AiPipelineJobJobDetailPipelineContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineRunContexts': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobJobDetailPipelineRunContext>, List<Map<String, dynamic>>>(pipelineRunContexts, (value) => pulumi.Input.encodeList<AiPipelineJobJobDetailPipelineRunContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskDetails': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobJobDetailTaskDetail>, List<Map<String, dynamic>>>(taskDetails, (value) => pulumi.Input.encodeList<AiPipelineJobJobDetailTaskDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiPipelineJobJobDetail.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobJobDetail(
      pipelineContexts: (() { final guardedValue = map['pipelineContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobJobDetailPipelineContext>(guardedValue, (value) => AiPipelineJobJobDetailPipelineContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pipelineRunContexts: (() { final guardedValue = map['pipelineRunContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobJobDetailPipelineRunContext>(guardedValue, (value) => AiPipelineJobJobDetailPipelineRunContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      taskDetails: (() { final guardedValue = map['taskDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobJobDetailTaskDetail>(guardedValue, (value) => AiPipelineJobJobDetailTaskDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
