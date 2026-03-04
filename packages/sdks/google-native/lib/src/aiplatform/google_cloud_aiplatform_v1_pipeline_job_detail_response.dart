// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_context_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_task_detail_response.dart';

/// The runtime detail of PipelineJob.
class GoogleCloudAiplatformV1PipelineJobDetailResponse {
  /// The context of the pipeline.
  final pulumi.Input<GoogleCloudAiplatformV1ContextResponse> pipelineContext;

  /// The context of the current pipeline run.
  final pulumi.Input<GoogleCloudAiplatformV1ContextResponse> pipelineRunContext;

  /// The runtime details of the tasks under the pipeline.
  final pulumi.Input<List<GoogleCloudAiplatformV1PipelineTaskDetailResponse>>
  taskDetails;

  /// Creates a new [GoogleCloudAiplatformV1PipelineJobDetailResponse].
  /// [pipelineContext] The context of the pipeline.
  /// [pipelineRunContext] The context of the current pipeline run.
  /// [taskDetails] The runtime details of the tasks under the pipeline.
  GoogleCloudAiplatformV1PipelineJobDetailResponse({
    required this.pipelineContext,
    required this.pipelineRunContext,
    required this.taskDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineContext':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1ContextResponse,
            Map<String, dynamic>
          >(pipelineContext, (value) => value.toMap()),
      'pipelineRunContext':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1ContextResponse,
            Map<String, dynamic>
          >(pipelineRunContext, (value) => value.toMap()),
      'taskDetails':
          pulumi.Input.mapInputValue<
            List<GoogleCloudAiplatformV1PipelineTaskDetailResponse>,
            List<Map<String, dynamic>>
          >(
            taskDetails,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1PipelineTaskDetailResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudAiplatformV1PipelineJobDetailResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PipelineJobDetailResponse(
      pipelineContext: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1ContextResponse.fromMap(
          (map['pipelineContext']! as Map).cast<String, dynamic>(),
        ),
      ),
      pipelineRunContext: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1ContextResponse.fromMap(
          (map['pipelineRunContext']! as Map).cast<String, dynamic>(),
        ),
      ),
      taskDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudAiplatformV1PipelineTaskDetailResponse
        >(
          map['taskDetails']!,
          (value) => GoogleCloudAiplatformV1PipelineTaskDetailResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
