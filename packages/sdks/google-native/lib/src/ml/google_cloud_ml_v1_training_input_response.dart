// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_encryption_config_response.dart';
import 'google_cloud_ml_v1_hyperparameter_spec_response.dart';
import 'google_cloud_ml_v1_replica_config_response.dart';
import 'google_cloud_ml_v1_scheduling_response.dart';

/// Represents input parameters for a training job. When using the gcloud command to submit your training job, you can specify the input parameters as command-line arguments and/or in a YAML configuration file referenced from the --config command-line argument. For details, see the guide to [submitting a training job](/ai-platform/training/docs/training-jobs).
class GoogleCloudMlV1TrainingInputResponse {
  /// Optional. Command-line arguments passed to the training application when it starts. If your job uses a custom container, then the arguments are passed to the container's `ENTRYPOINT` command.
  final pulumi.Input<List<String>> args;
  /// Optional. Whether you want AI Platform Training to enable [interactive shell access](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by TrainingOutput.web_access_uris or HyperparameterOutput.web_access_uris (within TrainingOutput.trials).
  final pulumi.Input<bool> enableWebAccess;
  /// Optional. Options for using customer-managed encryption keys (CMEK) to protect resources created by a training job, instead of using Google's default encryption. If this is set, then all resources created by the training job will be encrypted with the customer-managed encryption key that you specify. [Learn how and when to use CMEK with AI Platform Training](/ai-platform/training/docs/cmek).
  final pulumi.Input<GoogleCloudMlV1EncryptionConfigResponse> encryptionConfig;
  /// Optional. The configuration for evaluators. You should only set `evaluatorConfig.acceleratorConfig` if `evaluatorType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `evaluatorConfig.imageUri` only if you build a custom image for your evaluator. If `evaluatorConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  final pulumi.Input<GoogleCloudMlV1ReplicaConfigResponse> evaluatorConfig;
  /// Optional. The number of evaluator replicas to use for the training job. Each replica in the cluster will be of the type specified in `evaluator_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `evaluator_type`. The default value is zero.
  final pulumi.Input<String> evaluatorCount;
  /// Optional. Specifies the type of virtual machine to use for your training job's evaluator nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `evaluatorCount` is greater than zero.
  final pulumi.Input<String> evaluatorType;
  /// Optional. The set of Hyperparameters to tune.
  final pulumi.Input<GoogleCloudMlV1HyperparameterSpecResponse> hyperparameters;
  /// Optional. A Google Cloud Storage path in which to store training outputs and other data needed for training. This path is passed to your TensorFlow program as the '--job-dir' command-line argument. The benefit of specifying this field is that Cloud ML validates the path for use in training.
  final pulumi.Input<String> jobDir;
  /// Optional. The configuration for your master worker. You should only set `masterConfig.acceleratorConfig` if `masterType` is set to a Compute Engine machine type. Learn about [restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `masterConfig.imageUri` only if you build a custom image. Only one of `masterConfig.imageUri` and `runtimeVersion` should be set. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  final pulumi.Input<GoogleCloudMlV1ReplicaConfigResponse> masterConfig;
  /// Optional. Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. See the [list of compatible Compute Engine machine types](/ai-platform/training/docs/machine-types#compute-engine-machine-types). Alternatively, you can use the certain legacy machine types in this field. See the [list of legacy machine types](/ai-platform/training/docs/machine-types#legacy-machine-types). Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPUs](/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  final pulumi.Input<String> masterType;
  /// Optional. The full name of the [Compute Engine network](/vpc/docs/vpc) to which the Job is peered. For example, `projects/12345/global/networks/myVPC`. The format of this field is `projects/{project}/global/networks/{network}`, where {project} is a project number (like `12345`) and {network} is network name. Private services access must already be configured for the network. If left unspecified, the Job is not peered with any network. [Learn about using VPC Network Peering.](/ai-platform/training/docs/vpc-peering).
  final pulumi.Input<String> network;
  /// The Google Cloud Storage location of the packages with the training program and any additional dependencies. The maximum number of package URIs is 100.
  final pulumi.Input<List<String>> packageUris;
  /// Optional. The configuration for parameter servers. You should only set `parameterServerConfig.acceleratorConfig` if `parameterServerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `parameterServerConfig.imageUri` only if you build a custom image for your parameter server. If `parameterServerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  final pulumi.Input<GoogleCloudMlV1ReplicaConfigResponse> parameterServerConfig;
  /// Optional. The number of parameter server replicas to use for the training job. Each replica in the cluster will be of the type specified in `parameter_server_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `parameter_server_type`. The default value is zero.
  final pulumi.Input<String> parameterServerCount;
  /// Optional. Specifies the type of virtual machine to use for your training job's parameter server. The supported values are the same as those described in the entry for `master_type`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `parameter_server_count` is greater than zero.
  final pulumi.Input<String> parameterServerType;
  /// The Python module name to run after installing the packages.
  final pulumi.Input<String> pythonModule;
  /// Optional. The version of Python used in training. You must either specify this field or specify `masterConfig.imageUri`. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  final pulumi.Input<String> pythonVersion;
  /// The region to run the training job in. See the [available regions](/ai-platform/training/docs/regions) for AI Platform Training.
  final pulumi.Input<String> region;
  /// Optional. The AI Platform runtime version to use for training. You must either specify this field or specify `masterConfig.imageUri`. For more information, see the [runtime version list](/ai-platform/training/docs/runtime-version-list) and learn [how to manage runtime versions](/ai-platform/training/docs/versioning).
  final pulumi.Input<String> runtimeVersion;
  /// Specifies the machine types, the number of replicas for workers and parameter servers.
  final pulumi.Input<String> scaleTier;
  /// Optional. Scheduling options for a training job.
  final pulumi.Input<GoogleCloudMlV1SchedulingResponse> scheduling;
  /// Optional. The email address of a service account to use when running the training appplication. You must have the `iam.serviceAccounts.actAs` permission for the specified service account. In addition, the AI Platform Training Google-managed service account must have the `roles/iam.serviceAccountAdmin` role for the specified service account. [Learn more about configuring a service account.](/ai-platform/training/docs/custom-service-account) If not specified, the AI Platform Training Google-managed service account is used by default.
  final pulumi.Input<String> serviceAccount;
  /// Optional. Use `chief` instead of `master` in the `TF_CONFIG` environment variable when training with a custom container. Defaults to `false`. [Learn more about this field.](/ai-platform/training/docs/distributed-training-details#chief-versus-master) This field has no effect for training jobs that don't use a custom container.
  final pulumi.Input<bool> useChiefInTfConfig;
  /// Optional. The configuration for workers. You should only set `workerConfig.acceleratorConfig` if `workerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `workerConfig.imageUri` only if you build a custom image for your worker. If `workerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  final pulumi.Input<GoogleCloudMlV1ReplicaConfigResponse> workerConfig;
  /// Optional. The number of worker replicas to use for the training job. Each replica in the cluster will be of the type specified in `worker_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `worker_type`. The default value is zero.
  final pulumi.Input<String> workerCount;
  /// Optional. Specifies the type of virtual machine to use for your training job's worker nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. If you use `cloud_tpu` for this value, see special instructions for [configuring a custom TPU machine](/ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine). This value must be present when `scaleTier` is set to `CUSTOM` and `workerCount` is greater than zero.
  final pulumi.Input<String> workerType;

  /// Creates a new [GoogleCloudMlV1TrainingInputResponse].
  /// [args] Optional. Command-line arguments passed to the training application when it starts. If your job uses a custom container, then the arguments are passed to the container's `ENTRYPOINT` command.
  /// [enableWebAccess] Optional. Whether you want AI Platform Training to enable [interactive shell access](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by TrainingOutput.web_access_uris or HyperparameterOutput.web_access_uris (within TrainingOutput.trials).
  /// [encryptionConfig] Optional. Options for using customer-managed encryption keys (CMEK) to protect resources created by a training job, instead of using Google's default encryption. If this is set, then all resources created by the training job will be encrypted with the customer-managed encryption key that you specify. [Learn how and when to use CMEK with AI Platform Training](/ai-platform/training/docs/cmek).
  /// [evaluatorConfig] Optional. The configuration for evaluators. You should only set `evaluatorConfig.acceleratorConfig` if `evaluatorType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `evaluatorConfig.imageUri` only if you build a custom image for your evaluator. If `evaluatorConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  /// [evaluatorCount] Optional. The number of evaluator replicas to use for the training job. Each replica in the cluster will be of the type specified in `evaluator_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `evaluator_type`. The default value is zero.
  /// [evaluatorType] Optional. Specifies the type of virtual machine to use for your training job's evaluator nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `evaluatorCount` is greater than zero.
  /// [hyperparameters] Optional. The set of Hyperparameters to tune.
  /// [jobDir] Optional. A Google Cloud Storage path in which to store training outputs and other data needed for training. This path is passed to your TensorFlow program as the '--job-dir' command-line argument. The benefit of specifying this field is that Cloud ML validates the path for use in training.
  /// [masterConfig] Optional. The configuration for your master worker. You should only set `masterConfig.acceleratorConfig` if `masterType` is set to a Compute Engine machine type. Learn about [restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `masterConfig.imageUri` only if you build a custom image. Only one of `masterConfig.imageUri` and `runtimeVersion` should be set. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  /// [masterType] Optional. Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. See the [list of compatible Compute Engine machine types](/ai-platform/training/docs/machine-types#compute-engine-machine-types). Alternatively, you can use the certain legacy machine types in this field. See the [list of legacy machine types](/ai-platform/training/docs/machine-types#legacy-machine-types). Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPUs](/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  /// [network] Optional. The full name of the [Compute Engine network](/vpc/docs/vpc) to which the Job is peered. For example, `projects/12345/global/networks/myVPC`. The format of this field is `projects/{project}/global/networks/{network}`, where {project} is a project number (like `12345`) and {network} is network name. Private services access must already be configured for the network. If left unspecified, the Job is not peered with any network. [Learn about using VPC Network Peering.](/ai-platform/training/docs/vpc-peering).
  /// [packageUris] The Google Cloud Storage location of the packages with the training program and any additional dependencies. The maximum number of package URIs is 100.
  /// [parameterServerConfig] Optional. The configuration for parameter servers. You should only set `parameterServerConfig.acceleratorConfig` if `parameterServerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `parameterServerConfig.imageUri` only if you build a custom image for your parameter server. If `parameterServerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  /// [parameterServerCount] Optional. The number of parameter server replicas to use for the training job. Each replica in the cluster will be of the type specified in `parameter_server_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `parameter_server_type`. The default value is zero.
  /// [parameterServerType] Optional. Specifies the type of virtual machine to use for your training job's parameter server. The supported values are the same as those described in the entry for `master_type`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `parameter_server_count` is greater than zero.
  /// [pythonModule] The Python module name to run after installing the packages.
  /// [pythonVersion] Optional. The version of Python used in training. You must either specify this field or specify `masterConfig.imageUri`. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  /// [region] The region to run the training job in. See the [available regions](/ai-platform/training/docs/regions) for AI Platform Training.
  /// [runtimeVersion] Optional. The AI Platform runtime version to use for training. You must either specify this field or specify `masterConfig.imageUri`. For more information, see the [runtime version list](/ai-platform/training/docs/runtime-version-list) and learn [how to manage runtime versions](/ai-platform/training/docs/versioning).
  /// [scaleTier] Specifies the machine types, the number of replicas for workers and parameter servers.
  /// [scheduling] Optional. Scheduling options for a training job.
  /// [serviceAccount] Optional. The email address of a service account to use when running the training appplication. You must have the `iam.serviceAccounts.actAs` permission for the specified service account. In addition, the AI Platform Training Google-managed service account must have the `roles/iam.serviceAccountAdmin` role for the specified service account. [Learn more about configuring a service account.](/ai-platform/training/docs/custom-service-account) If not specified, the AI Platform Training Google-managed service account is used by default.
  /// [useChiefInTfConfig] Optional. Use `chief` instead of `master` in the `TF_CONFIG` environment variable when training with a custom container. Defaults to `false`. [Learn more about this field.](/ai-platform/training/docs/distributed-training-details#chief-versus-master) This field has no effect for training jobs that don't use a custom container.
  /// [workerConfig] Optional. The configuration for workers. You should only set `workerConfig.acceleratorConfig` if `workerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `workerConfig.imageUri` only if you build a custom image for your worker. If `workerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).
  /// [workerCount] Optional. The number of worker replicas to use for the training job. Each replica in the cluster will be of the type specified in `worker_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `worker_type`. The default value is zero.
  /// [workerType] Optional. Specifies the type of virtual machine to use for your training job's worker nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. If you use `cloud_tpu` for this value, see special instructions for [configuring a custom TPU machine](/ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine). This value must be present when `scaleTier` is set to `CUSTOM` and `workerCount` is greater than zero.
  GoogleCloudMlV1TrainingInputResponse({
    required this.args,
    required this.enableWebAccess,
    required this.encryptionConfig,
    required this.evaluatorConfig,
    required this.evaluatorCount,
    required this.evaluatorType,
    required this.hyperparameters,
    required this.jobDir,
    required this.masterConfig,
    required this.masterType,
    required this.network,
    required this.packageUris,
    required this.parameterServerConfig,
    required this.parameterServerCount,
    required this.parameterServerType,
    required this.pythonModule,
    required this.pythonVersion,
    required this.region,
    required this.runtimeVersion,
    required this.scaleTier,
    required this.scheduling,
    required this.serviceAccount,
    required this.useChiefInTfConfig,
    required this.workerConfig,
    required this.workerCount,
    required this.workerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'enableWebAccess': enableWebAccess,
      'encryptionConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1EncryptionConfigResponse, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'evaluatorConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1ReplicaConfigResponse, Map<String, dynamic>>(evaluatorConfig, (value) => value.toMap()),
      'evaluatorCount': evaluatorCount,
      'evaluatorType': evaluatorType,
      'hyperparameters': pulumi.Input.mapInputValue<GoogleCloudMlV1HyperparameterSpecResponse, Map<String, dynamic>>(hyperparameters, (value) => value.toMap()),
      'jobDir': jobDir,
      'masterConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1ReplicaConfigResponse, Map<String, dynamic>>(masterConfig, (value) => value.toMap()),
      'masterType': masterType,
      'network': network,
      'packageUris': packageUris,
      'parameterServerConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1ReplicaConfigResponse, Map<String, dynamic>>(parameterServerConfig, (value) => value.toMap()),
      'parameterServerCount': parameterServerCount,
      'parameterServerType': parameterServerType,
      'pythonModule': pythonModule,
      'pythonVersion': pythonVersion,
      'region': region,
      'runtimeVersion': runtimeVersion,
      'scaleTier': scaleTier,
      'scheduling': pulumi.Input.mapInputValue<GoogleCloudMlV1SchedulingResponse, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'useChiefInTfConfig': useChiefInTfConfig,
      'workerConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1ReplicaConfigResponse, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
      'workerCount': workerCount,
      'workerType': workerType,
    };
  }

  factory GoogleCloudMlV1TrainingInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrainingInputResponse(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      enableWebAccess: pulumi.Input.fromValue(map['enableWebAccess'] as bool),
      encryptionConfig: pulumi.Input.fromValue(GoogleCloudMlV1EncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      evaluatorConfig: pulumi.Input.fromValue(GoogleCloudMlV1ReplicaConfigResponse.fromMap((map['evaluatorConfig']! as Map).cast<String, dynamic>())),
      evaluatorCount: pulumi.Input.fromValue(map['evaluatorCount'] as String),
      evaluatorType: pulumi.Input.fromValue(map['evaluatorType'] as String),
      hyperparameters: pulumi.Input.fromValue(GoogleCloudMlV1HyperparameterSpecResponse.fromMap((map['hyperparameters']! as Map).cast<String, dynamic>())),
      jobDir: pulumi.Input.fromValue(map['jobDir'] as String),
      masterConfig: pulumi.Input.fromValue(GoogleCloudMlV1ReplicaConfigResponse.fromMap((map['masterConfig']! as Map).cast<String, dynamic>())),
      masterType: pulumi.Input.fromValue(map['masterType'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      packageUris: pulumi.Input.fromValue((map['packageUris'] as List).cast<String>()),
      parameterServerConfig: pulumi.Input.fromValue(GoogleCloudMlV1ReplicaConfigResponse.fromMap((map['parameterServerConfig']! as Map).cast<String, dynamic>())),
      parameterServerCount: pulumi.Input.fromValue(map['parameterServerCount'] as String),
      parameterServerType: pulumi.Input.fromValue(map['parameterServerType'] as String),
      pythonModule: pulumi.Input.fromValue(map['pythonModule'] as String),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      scaleTier: pulumi.Input.fromValue(map['scaleTier'] as String),
      scheduling: pulumi.Input.fromValue(GoogleCloudMlV1SchedulingResponse.fromMap((map['scheduling']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      useChiefInTfConfig: pulumi.Input.fromValue(map['useChiefInTfConfig'] as bool),
      workerConfig: pulumi.Input.fromValue(GoogleCloudMlV1ReplicaConfigResponse.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())),
      workerCount: pulumi.Input.fromValue(map['workerCount'] as String),
      workerType: pulumi.Input.fromValue(map['workerType'] as String),
    );
  }
}

