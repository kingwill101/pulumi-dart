// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_pipeline_job_runtime_config_failure_policy.dart';

/// The runtime config of a PipelineJob.
class GoogleCloudAiplatformV1PipelineJobRuntimeConfig {
  /// Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as PIPELINE_FAILURE_POLICY_FAIL_SLOW. However, if a pipeline is set to PIPELINE_FAILURE_POLICY_FAIL_FAST, it will stop scheduling any new tasks when a task has failed. Any scheduled tasks will continue to completion.
  final pulumi.Input<GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy>? failurePolicy;
  /// A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  final pulumi.Input<String> gcsOutputDirectory;
  /// The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  final pulumi.Input<Map<String, String>>? inputArtifacts;
  /// The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  final pulumi.Input<Map<String, String>>? parameterValues;
  /// Deprecated. Use RuntimeConfig.parameter_values instead. The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.0.0 or lower, such as pipelines built using Kubeflow Pipelines SDK 1.8 or lower.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [GoogleCloudAiplatformV1PipelineJobRuntimeConfig].
  /// [failurePolicy] Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as PIPELINE_FAILURE_POLICY_FAIL_SLOW. However, if a pipeline is set to PIPELINE_FAILURE_POLICY_FAIL_FAST, it will stop scheduling any new tasks when a task has failed. Any scheduled tasks will continue to completion.
  /// [gcsOutputDirectory] A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  /// [inputArtifacts] The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  /// [parameterValues] The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  /// [parameters] Deprecated. Use RuntimeConfig.parameter_values instead. The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.0.0 or lower, such as pipelines built using Kubeflow Pipelines SDK 1.8 or lower.
  GoogleCloudAiplatformV1PipelineJobRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.inputArtifacts,
    this.parameterValues,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy, String>(failurePolicy, (value) => value.value),
      'gcsOutputDirectory': gcsOutputDirectory,
      'inputArtifacts': ?inputArtifacts,
      'parameterValues': ?parameterValues,
      'parameters': ?parameters,
    };
  }

  factory GoogleCloudAiplatformV1PipelineJobRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineJobRuntimeConfig(
      failurePolicy: map['failurePolicy'] == null ? null : (GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy.fromValue(map['failurePolicy']! as String)).input(),
      gcsOutputDirectory: (map['gcsOutputDirectory'] as String).input(),
      inputArtifacts: map['inputArtifacts'] == null ? null : ((map['inputArtifacts']! as Map).cast<String, String>()).input(),
      parameterValues: map['parameterValues'] == null ? null : ((map['parameterValues']! as Map).cast<String, String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

