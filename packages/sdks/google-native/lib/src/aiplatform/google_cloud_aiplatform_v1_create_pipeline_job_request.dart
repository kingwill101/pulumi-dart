// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_pipeline_job.dart';

/// Request message for PipelineService.CreatePipelineJob.
class GoogleCloudAiplatformV1CreatePipelineJobRequest {
  /// The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  final pulumi.Input<String> parent;
  /// The PipelineJob to create.
  final pulumi.Input<GoogleCloudAiplatformV1PipelineJob> pipelineJob;
  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String>? pipelineJobId;

  /// Creates a new [GoogleCloudAiplatformV1CreatePipelineJobRequest].
  /// [parent] The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  /// [pipelineJob] The PipelineJob to create.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  GoogleCloudAiplatformV1CreatePipelineJobRequest({
    required this.parent,
    required this.pipelineJob,
    this.pipelineJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'pipelineJob': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1PipelineJob, Map<String, dynamic>>(pipelineJob, (value) => value.toMap()),
      'pipelineJobId': ?pipelineJobId,
    };
  }

  factory GoogleCloudAiplatformV1CreatePipelineJobRequest.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1CreatePipelineJobRequest(
      parent: (map['parent'] as String).input(),
      pipelineJob: (GoogleCloudAiplatformV1PipelineJob.fromMap((map['pipelineJob'] as Map).cast<String, dynamic>())).input(),
      pipelineJobId: map['pipelineJobId'] == null ? null : (map['pipelineJobId'] as String).input(),
    );
  }
}

