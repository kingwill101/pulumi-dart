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
    pulumi.Output<List<String>>? additionalExperiments,
    pulumi.Output<List<String>>? additionalPipelineOptions,
    pulumi.Output<String>? autoscalingAlgorithm,
    required pulumi.Output<String> containerSpecGcsPath,
    pulumi.Output<bool>? enableStreamingEngine,
    pulumi.Output<String>? ipConfiguration,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? launcherMachineType,
    pulumi.Output<String>? machineType,
    pulumi.Output<int>? maxWorkers,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<int>? numWorkers,
    pulumi.Output<String>? onDelete,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sdkContainerImage,
    pulumi.Output<String>? serviceAccountEmail,
    pulumi.Output<bool>? skipWaitOnJobTermination,
    pulumi.Output<String>? stagingLocation,
    pulumi.Output<String>? subnetwork,
    pulumi.Output<String>? tempLocation,
    pulumi.Output<Map<String, String>>? transformNameMapping,
  }) :
      additionalExperiments = pulumi.Input.asOptionalInput<List<String>>(additionalExperiments),
      additionalPipelineOptions = pulumi.Input.asOptionalInput<List<String>>(additionalPipelineOptions),
      autoscalingAlgorithm = pulumi.Input.asOptionalInput<String>(autoscalingAlgorithm),
      containerSpecGcsPath = pulumi.Input.asInput<String>(containerSpecGcsPath),
      enableStreamingEngine = pulumi.Input.asOptionalInput<bool>(enableStreamingEngine),
      ipConfiguration = pulumi.Input.asOptionalInput<String>(ipConfiguration),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      launcherMachineType = pulumi.Input.asOptionalInput<String>(launcherMachineType),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      maxWorkers = pulumi.Input.asOptionalInput<int>(maxWorkers),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      numWorkers = pulumi.Input.asOptionalInput<int>(numWorkers),
      onDelete = pulumi.Input.asOptionalInput<String>(onDelete),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      sdkContainerImage = pulumi.Input.asOptionalInput<String>(sdkContainerImage),
      serviceAccountEmail = pulumi.Input.asOptionalInput<String>(serviceAccountEmail),
      skipWaitOnJobTermination = pulumi.Input.asOptionalInput<bool>(skipWaitOnJobTermination),
      stagingLocation = pulumi.Input.asOptionalInput<String>(stagingLocation),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      tempLocation = pulumi.Input.asOptionalInput<String>(tempLocation),
      transformNameMapping = pulumi.Input.asOptionalInput<Map<String, String>>(transformNameMapping);

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
      additionalExperiments: map['additionalExperiments'] == null ? null : pulumi.Output.create<List<String>>((map['additionalExperiments'] as List).cast<String>()),
      additionalPipelineOptions: map['additionalPipelineOptions'] == null ? null : pulumi.Output.create<List<String>>((map['additionalPipelineOptions'] as List).cast<String>()),
      autoscalingAlgorithm: map['autoscalingAlgorithm'] == null ? null : pulumi.Output.create<String>(map['autoscalingAlgorithm'] as String),
      containerSpecGcsPath: pulumi.Output.create<String>(map['containerSpecGcsPath'] as String),
      enableStreamingEngine: map['enableStreamingEngine'] == null ? null : pulumi.Output.create<bool>(map['enableStreamingEngine'] as bool),
      ipConfiguration: map['ipConfiguration'] == null ? null : pulumi.Output.create<String>(map['ipConfiguration'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      launcherMachineType: map['launcherMachineType'] == null ? null : pulumi.Output.create<String>(map['launcherMachineType'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      maxWorkers: map['maxWorkers'] == null ? null : pulumi.Output.create<int>(map['maxWorkers'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      numWorkers: map['numWorkers'] == null ? null : pulumi.Output.create<int>(map['numWorkers'] as int),
      onDelete: map['onDelete'] == null ? null : pulumi.Output.create<String>(map['onDelete'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sdkContainerImage: map['sdkContainerImage'] == null ? null : pulumi.Output.create<String>(map['sdkContainerImage'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : pulumi.Output.create<String>(map['serviceAccountEmail'] as String),
      skipWaitOnJobTermination: map['skipWaitOnJobTermination'] == null ? null : pulumi.Output.create<bool>(map['skipWaitOnJobTermination'] as bool),
      stagingLocation: map['stagingLocation'] == null ? null : pulumi.Output.create<String>(map['stagingLocation'] as String),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      tempLocation: map['tempLocation'] == null ? null : pulumi.Output.create<String>(map['tempLocation'] as String),
      transformNameMapping: map['transformNameMapping'] == null ? null : pulumi.Output.create<Map<String, String>>((map['transformNameMapping'] as Map).cast<String, String>()),
    );
  }
}

