// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_pipeline_job_response.dart';

/// Request message for PipelineService.CreatePipelineJob.
class GoogleCloudAiplatformV1CreatePipelineJobRequestResponse {
  /// The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  final pulumi.Input<String> parent;
  /// The PipelineJob to create.
  final pulumi.Input<GoogleCloudAiplatformV1PipelineJobResponse> pipelineJob;
  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String> pipelineJobId;

  /// Creates a new [GoogleCloudAiplatformV1CreatePipelineJobRequestResponse].
  /// [parent] The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  /// [pipelineJob] The PipelineJob to create.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  GoogleCloudAiplatformV1CreatePipelineJobRequestResponse({
    required this.parent,
    required this.pipelineJob,
    required this.pipelineJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'pipelineJob': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1PipelineJobResponse, Map<String, dynamic>>(pipelineJob, (value) => value.toMap()),
      'pipelineJobId': pipelineJobId,
    };
  }

  factory GoogleCloudAiplatformV1CreatePipelineJobRequestResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1CreatePipelineJobRequestResponse(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      pipelineJob: pulumi.Input.fromValue(GoogleCloudAiplatformV1PipelineJobResponse.fromMap((map['pipelineJob']! as Map).cast<String, dynamic>())),
      pipelineJobId: pulumi.Input.fromValue(map['pipelineJobId'] as String),
    );
  }
}

