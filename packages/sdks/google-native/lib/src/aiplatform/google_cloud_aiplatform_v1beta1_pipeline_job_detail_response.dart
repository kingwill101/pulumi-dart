// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_context_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_detail_response.dart';

/// The runtime detail of PipelineJob.
class GoogleCloudAiplatformV1beta1PipelineJobDetailResponse {
  /// The context of the pipeline.
  final GoogleCloudAiplatformV1beta1ContextResponse pipelineContext;
  /// The context of the current pipeline run.
  final GoogleCloudAiplatformV1beta1ContextResponse pipelineRunContext;
  /// The runtime details of the tasks under the pipeline.
  final List<GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse> taskDetails;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineJobDetailResponse].
  /// [pipelineContext] The context of the pipeline.
  /// [pipelineRunContext] The context of the current pipeline run.
  /// [taskDetails] The runtime details of the tasks under the pipeline.
  GoogleCloudAiplatformV1beta1PipelineJobDetailResponse({
    required this.pipelineContext,
    required this.pipelineRunContext,
    required this.taskDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineContext': pipelineContext.toMap(),
      'pipelineRunContext': pipelineRunContext.toMap(),
      'taskDetails': pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse, Map<String, dynamic>>(taskDetails, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineJobDetailResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineJobDetailResponse(
      pipelineContext: GoogleCloudAiplatformV1beta1ContextResponse.fromMap((map['pipelineContext'] as Map).cast<String, dynamic>()),
      pipelineRunContext: GoogleCloudAiplatformV1beta1ContextResponse.fromMap((map['pipelineRunContext'] as Map).cast<String, dynamic>()),
      taskDetails: pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse>(map['taskDetails'], (value) => GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

