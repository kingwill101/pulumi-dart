// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataflow_flex_template_job_flex_template_job_args_doc}
/// The set of arguments for FlexTemplateJob.
/// {@endtemplate}
/// {@macro pulumi_dataflow_flex_template_job_flex_template_job_args_doc}
class FlexTemplateJobArgs {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  final pulumi.Input<List<String>>? additionalExperiments;
  /// List of pipeline options that should be used by the job. An example value is `["numberOfWorkerHarnessThreads=20"]`.
  final pulumi.Input<List<String>>? additionalPipelineOptions;
  /// The algorithm to use for autoscaling.
  final pulumi.Input<String>? autoscalingAlgorithm;
  /// The GCS path to the Dataflow job Flex
  /// Template.
  ///
  /// - - -
  final pulumi.Input<String> containerSpecGcsPath;
  /// Immutable. Indicates if the job should use the streaming engine feature.
  final pulumi.Input<bool>? enableStreamingEngine;
  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  final pulumi.Input<String>? ipConfiguration;
  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  final pulumi.Input<String>? kmsKeyName;
  /// User labels to be specified for the job. Keys and values
  /// should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. **Note**: This field is marked as deprecated as the API does not currently
  /// support adding labels.
  /// **NOTE**: Google-provided Dataflow templates often provide default labels
  /// that begin with `goog-dataflow-provided`. Unless explicitly set in config, these
  /// labels will be ignored to prevent diffs on re-apply.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to use for launching the job. The default is n1-standard-1.
  final pulumi.Input<String>? launcherMachineType;
  /// The machine type to use for the job.
  final pulumi.Input<String>? machineType;
  /// Immutable. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final pulumi.Input<int>? maxWorkers;
  /// Immutable. A unique name for the resource, required by Dataflow.
  final pulumi.Input<String>? name;
  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  final pulumi.Input<String>? network;
  /// Immutable. The initial number of Google Compute Engine instances for the job.
  final pulumi.Input<int>? numWorkers;
  /// One of "drain" or "cancel". Specifies behavior of
  /// deletion during `pulumi destroy`.  See above note.
  final pulumi.Input<String>? onDelete;
  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Immutable. The region in which the created job should run.
  final pulumi.Input<String>? region;
  /// Docker registry location of container image to use for the 'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.
  final pulumi.Input<String>? sdkContainerImage;
  /// Service account email to run the workers as. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  final pulumi.Input<String>? serviceAccountEmail;
  final pulumi.Input<bool>? skipWaitOnJobTermination;
  /// The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://.
  final pulumi.Input<String>? stagingLocation;
  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK".
  final pulumi.Input<String>? subnetwork;
  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  final pulumi.Input<String>? tempLocation;
  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.
  final pulumi.Input<Map<String, String>>? transformNameMapping;

  /// Creates a new [FlexTemplateJobArgs].
  /// [additionalExperiments] List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  /// [additionalPipelineOptions] List of pipeline options that should be used by the job. An example value is `["numberOfWorkerHarnessThreads=20"]`.
  /// [autoscalingAlgorithm] The algorithm to use for autoscaling.
  /// [containerSpecGcsPath] The GCS path to the Dataflow job Flex
  /// [enableStreamingEngine] Immutable. Indicates if the job should use the streaming engine feature.
  /// [ipConfiguration] The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  /// [kmsKeyName] The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  /// [labels] User labels to be specified for the job. Keys and values
  /// [launcherMachineType] The machine type to use for launching the job. The default is n1-standard-1.
  /// [machineType] The machine type to use for the job.
  /// [maxWorkers] Immutable. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  /// [name] Immutable. A unique name for the resource, required by Dataflow.
  /// [network] The network to which VMs will be assigned. If it is not provided, "default" will be used.
  /// [numWorkers] Immutable. The initial number of Google Compute Engine instances for the job.
  /// [onDelete] One of "drain" or "cancel". Specifies behavior of
  /// [parameters] **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// [project] The project in which the resource belongs. If it is not
  /// [region] Immutable. The region in which the created job should run.
  /// [sdkContainerImage] Docker registry location of container image to use for the 'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.
  /// [serviceAccountEmail] Service account email to run the workers as. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  /// [skipWaitOnJobTermination] Optional.
  /// [stagingLocation] The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://.
  /// [subnetwork] The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK".
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  /// [transformNameMapping] Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.
  FlexTemplateJobArgs({
    this.additionalExperiments,
    this.additionalPipelineOptions,
    this.autoscalingAlgorithm,
    required this.containerSpecGcsPath,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.labels,
    this.launcherMachineType,
    this.machineType,
    this.maxWorkers,
    this.name,
    this.network,
    this.numWorkers,
    this.onDelete,
    this.parameters,
    this.project,
    this.region,
    this.sdkContainerImage,
    this.serviceAccountEmail,
    this.skipWaitOnJobTermination,
    this.stagingLocation,
    this.subnetwork,
    this.tempLocation,
    this.transformNameMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'additionalPipelineOptions': ?additionalPipelineOptions,
      'autoscalingAlgorithm': ?autoscalingAlgorithm,
      'containerSpecGcsPath': containerSpecGcsPath,
      'enableStreamingEngine': ?enableStreamingEngine,
      'ipConfiguration': ?ipConfiguration,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'launcherMachineType': ?launcherMachineType,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'name': ?name,
      'network': ?network,
      'numWorkers': ?numWorkers,
      'onDelete': ?onDelete,
      'parameters': ?parameters,
      'project': ?project,
      'region': ?region,
      'sdkContainerImage': ?sdkContainerImage,
      'serviceAccountEmail': ?serviceAccountEmail,
      'skipWaitOnJobTermination': ?skipWaitOnJobTermination,
      'stagingLocation': ?stagingLocation,
      'subnetwork': ?subnetwork,
      'tempLocation': ?tempLocation,
      'transformNameMapping': ?transformNameMapping,
    };
  }

  factory FlexTemplateJobArgs.fromMap(Map<String, dynamic> map) {
    return FlexTemplateJobArgs(
      additionalExperiments: map['additionalExperiments'] == null ? null : ((map['additionalExperiments'] as List).cast<String>()).input(),
      additionalPipelineOptions: map['additionalPipelineOptions'] == null ? null : ((map['additionalPipelineOptions'] as List).cast<String>()).input(),
      autoscalingAlgorithm: map['autoscalingAlgorithm'] == null ? null : (map['autoscalingAlgorithm'] as String).input(),
      containerSpecGcsPath: (map['containerSpecGcsPath'] as String).input(),
      enableStreamingEngine: map['enableStreamingEngine'] == null ? null : (map['enableStreamingEngine'] as bool).input(),
      ipConfiguration: map['ipConfiguration'] == null ? null : (map['ipConfiguration'] as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      launcherMachineType: map['launcherMachineType'] == null ? null : (map['launcherMachineType'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      maxWorkers: map['maxWorkers'] == null ? null : (map['maxWorkers'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      numWorkers: map['numWorkers'] == null ? null : (map['numWorkers'] as int).input(),
      onDelete: map['onDelete'] == null ? null : (map['onDelete'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sdkContainerImage: map['sdkContainerImage'] == null ? null : (map['sdkContainerImage'] as String).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail'] as String).input(),
      skipWaitOnJobTermination: map['skipWaitOnJobTermination'] == null ? null : (map['skipWaitOnJobTermination'] as bool).input(),
      stagingLocation: map['stagingLocation'] == null ? null : (map['stagingLocation'] as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      tempLocation: map['tempLocation'] == null ? null : (map['tempLocation'] as String).input(),
      transformNameMapping: map['transformNameMapping'] == null ? null : ((map['transformNameMapping'] as Map).cast<String, String>()).input(),
    );
  }
}

