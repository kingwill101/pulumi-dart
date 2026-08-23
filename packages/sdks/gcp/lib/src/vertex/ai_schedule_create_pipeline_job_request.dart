// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_pipeline_job_request_pipeline_job.dart';

class AiScheduleCreatePipelineJobRequest {
  /// The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  final pulumi.Input<String> parent;
  /// An instance of a machine learning PipelineJob.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreatePipelineJobRequestPipelineJob> pipelineJob;
  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String>? pipelineJobId;

  /// Creates a new [AiScheduleCreatePipelineJobRequest].
  /// [parent] The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  /// [pipelineJob] An instance of a machine learning PipelineJob.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  const AiScheduleCreatePipelineJobRequest({
    required this.parent,
    required this.pipelineJob,
    this.pipelineJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'pipelineJob': pulumi.Input.mapInputValue<AiScheduleCreatePipelineJobRequestPipelineJob, Map<String, dynamic>>(pipelineJob, (value) => value.toMap()),
      'pipelineJobId': ?pipelineJobId,
    };
  }

  factory AiScheduleCreatePipelineJobRequest.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreatePipelineJobRequest(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      pipelineJob: pulumi.Input.fromValue(AiScheduleCreatePipelineJobRequestPipelineJob.fromMap((map['pipelineJob']! as Map).cast<String, dynamic>())),
      pipelineJobId: (() { final guardedValue = map['pipelineJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
