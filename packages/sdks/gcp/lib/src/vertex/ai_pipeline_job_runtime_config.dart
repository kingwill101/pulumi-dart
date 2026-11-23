// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_pipeline_job_runtime_config_default_runtime.dart';
import 'ai_pipeline_job_runtime_config_input_artifact.dart';

class AiPipelineJobRuntimeConfig {
  /// (Optional, Beta)
  /// The default runtime for the PipelineJob.
  /// Structure is documented below.
  final pulumi.Input<AiPipelineJobRuntimeConfigDefaultRuntime?>? defaultRuntime;
  /// Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as `PIPELINE_FAILURE_POLICY_FAIL_SLOW`. However, if a pipeline is set to `PIPELINE_FAILURE_POLICY_FAIL_FAST`, it will stop scheduling any new tasks as soon as the pipeline fails.
  /// Possible values are: `PIPELINE_FAILURE_POLICY_UNSPECIFIED`, `PIPELINE_FAILURE_POLICY_FAIL_SLOW`, `PIPELINE_FAILURE_POLICY_FAIL_FAST`.
  final pulumi.Input<String?>? failurePolicy;
  /// A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-directory pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  final pulumi.Input<String> gcsOutputDirectory;
  /// The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  /// Structure is documented below.
  final pulumi.Input<List<AiPipelineJobRuntimeConfigInputArtifact>?>? inputArtifacts;
  /// The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  final pulumi.Input<Map<String, String>?>? parameterValues;

  /// Creates a new [AiPipelineJobRuntimeConfig].
  /// [defaultRuntime] (Optional, Beta)
  /// [failurePolicy] Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as `PIPELINE_FAILURE_POLICY_FAIL_SLOW`. However, if a pipeline is set to `PIPELINE_FAILURE_POLICY_FAIL_FAST`, it will stop scheduling any new tasks as soon as the pipeline fails.
  /// [gcsOutputDirectory] A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-directory pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  /// [inputArtifacts] The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  /// [parameterValues] The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  const AiPipelineJobRuntimeConfig({
    this.defaultRuntime,
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.inputArtifacts,
    this.parameterValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRuntime': ?pulumi.Input.mapOptionalInputValue<AiPipelineJobRuntimeConfigDefaultRuntime, Map<String, dynamic>>(defaultRuntime, (value) => value.toMap()),
      'failurePolicy': ?failurePolicy,
      'gcsOutputDirectory': gcsOutputDirectory,
      'inputArtifacts': ?pulumi.Input.mapOptionalInputValue<List<AiPipelineJobRuntimeConfigInputArtifact>, List<Map<String, dynamic>>>(inputArtifacts, (value) => pulumi.Input.encodeList<AiPipelineJobRuntimeConfigInputArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterValues': ?parameterValues,
    };
  }

  factory AiPipelineJobRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobRuntimeConfig(
      defaultRuntime: (() { final guardedValue = map['defaultRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPipelineJobRuntimeConfigDefaultRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsOutputDirectory: pulumi.Input.fromValue(map['gcsOutputDirectory'] as String),
      inputArtifacts: (() { final guardedValue = map['inputArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPipelineJobRuntimeConfigInputArtifact>(guardedValue, (value) => AiPipelineJobRuntimeConfigInputArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
