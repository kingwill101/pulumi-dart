// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataproc_parameters.dart';
import 'execution_template_job_type.dart';
import 'execution_template_scale_tier.dart';
import 'scheduler_accelerator_config.dart';
import 'vertex_aiparameters.dart';

/// The description a notebook execution workload.
class ExecutionTemplate {
  /// Configuration (count and accelerator type) for hardware running notebook execution.
  final pulumi.Input<SchedulerAcceleratorConfig>? acceleratorConfig;
  /// Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  final pulumi.Input<String>? containerImageUri;
  /// Parameters used in Dataproc JobType executions.
  final pulumi.Input<DataprocParameters>? dataprocParameters;
  /// Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  final pulumi.Input<String>? inputNotebookFile;
  /// The type of Job to be used on this execution.
  final pulumi.Input<ExecutionTemplateJobType>? jobType;
  /// Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  final pulumi.Input<String>? kernelSpec;
  /// Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  final pulumi.Input<String>? masterType;
  /// Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  final pulumi.Input<String>? outputNotebookFolder;
  /// Parameters used within the 'input_notebook_file' notebook.
  final pulumi.Input<String>? parameters;
  /// Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  final pulumi.Input<String>? paramsYamlFile;
  /// Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  final pulumi.Input<ExecutionTemplateScaleTier> scaleTier;
  /// The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  final pulumi.Input<String>? serviceAccount;
  /// The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final pulumi.Input<String>? tensorboard;
  /// Parameters used in Vertex AI JobType executions.
  final pulumi.Input<VertexAIParameters>? vertexAiParameters;

  /// Creates a new [ExecutionTemplate].
  /// [acceleratorConfig] Configuration (count and accelerator type) for hardware running notebook execution.
  /// [containerImageUri] Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  /// [dataprocParameters] Parameters used in Dataproc JobType executions.
  /// [inputNotebookFile] Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  /// [jobType] The type of Job to be used on this execution.
  /// [kernelSpec] Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  /// [labels] Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  /// [masterType] Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  /// [outputNotebookFolder] Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  /// [parameters] Parameters used within the 'input_notebook_file' notebook.
  /// [paramsYamlFile] Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  /// [scaleTier] Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  /// [serviceAccount] The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  /// [tensorboard] The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  /// [vertexAiParameters] Parameters used in Vertex AI JobType executions.
  const ExecutionTemplate({
    this.acceleratorConfig,
    this.containerImageUri,
    this.dataprocParameters,
    this.inputNotebookFile,
    this.jobType,
    this.kernelSpec,
    this.labels,
    this.masterType,
    this.outputNotebookFolder,
    this.parameters,
    this.paramsYamlFile,
    required this.scaleTier,
    this.serviceAccount,
    this.tensorboard,
    this.vertexAiParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<SchedulerAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'containerImageUri': ?containerImageUri,
      'dataprocParameters': ?pulumi.Input.mapOptionalInputValue<DataprocParameters, Map<String, dynamic>>(dataprocParameters, (value) => value.toMap()),
      'inputNotebookFile': ?inputNotebookFile,
      'jobType': ?pulumi.Input.mapOptionalInputValue<ExecutionTemplateJobType, String>(jobType, (value) => value.wireValue),
      'kernelSpec': ?kernelSpec,
      'labels': ?labels,
      'masterType': ?masterType,
      'outputNotebookFolder': ?outputNotebookFolder,
      'parameters': ?parameters,
      'paramsYamlFile': ?paramsYamlFile,
      'scaleTier': pulumi.Input.mapInputValue<ExecutionTemplateScaleTier, String>(scaleTier, (value) => value.wireValue),
      'serviceAccount': ?serviceAccount,
      'tensorboard': ?tensorboard,
      'vertexAiParameters': ?pulumi.Input.mapOptionalInputValue<VertexAIParameters, Map<String, dynamic>>(vertexAiParameters, (value) => value.toMap()),
    };
  }

  factory ExecutionTemplate.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplate(
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulerAcceleratorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImageUri: (() { final guardedValue = map['containerImageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataprocParameters: (() { final guardedValue = map['dataprocParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataprocParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputNotebookFile: (() { final guardedValue = map['inputNotebookFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionTemplateJobType.fromValue(guardedValue as String)); })(),
      kernelSpec: (() { final guardedValue = map['kernelSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      masterType: (() { final guardedValue = map['masterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputNotebookFolder: (() { final guardedValue = map['outputNotebookFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paramsYamlFile: (() { final guardedValue = map['paramsYamlFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleTier: pulumi.Input.fromValue(ExecutionTemplateScaleTier.fromValue(map['scaleTier']! as String)),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboard: (() { final guardedValue = map['tensorboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vertexAiParameters: (() { final guardedValue = map['vertexAiParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VertexAIParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

