// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig {
  /// Possible values: PIPELINE_FAILURE_POLICY_FAIL_SLOW PIPELINE_FAILURE_POLICY_FAIL_FAST
  final pulumi.Input<String>? failurePolicy;
  /// A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  final pulumi.Input<String> gcsOutputDirectory;
  /// The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  final pulumi.Input<Map<String, String>>? inputArtifacts;
  /// The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  ///
  /// &lt;a name="nestedCreatePipelineJobRequestPipelineJobTemplateMetadata"&gt;&lt;/a&gt;The `templateMetadata` block contains:
  final pulumi.Input<Map<String, String>>? parameterValues;

  /// Creates a new [AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig].
  /// [failurePolicy] Possible values: PIPELINE_FAILURE_POLICY_FAIL_SLOW PIPELINE_FAILURE_POLICY_FAIL_FAST
  /// [gcsOutputDirectory] A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  /// [inputArtifacts] The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  /// [parameterValues] The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  const AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.inputArtifacts,
    this.parameterValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePolicy': ?failurePolicy,
      'gcsOutputDirectory': gcsOutputDirectory,
      'inputArtifacts': ?inputArtifacts,
      'parameterValues': ?parameterValues,
    };
  }

  factory AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig(
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsOutputDirectory: pulumi.Input.fromValue(map['gcsOutputDirectory'] as String),
      inputArtifacts: (() { final guardedValue = map['inputArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
