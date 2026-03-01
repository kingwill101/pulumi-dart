// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataflow_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_dataflow_job_job_args_doc}
class JobArgs {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  final pulumi.Input<List<String>>? additionalExperiments;
  /// Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  final pulumi.Input<bool>? enableStreamingEngine;
  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  final pulumi.Input<String>? ipConfiguration;
  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  final pulumi.Input<String>? kmsKeyName;
  /// User labels to be specified for the job. Keys and values should follow the restrictions
  /// specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration. Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to use for the job.
  final pulumi.Input<String>? machineType;
  /// The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  final pulumi.Input<int>? maxWorkers;
  /// A unique name for the resource, required by Dataflow.
  final pulumi.Input<String>? name;
  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  final pulumi.Input<String>? network;
  /// One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  final pulumi.Input<String>? onDelete;
  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the created job should run.
  final pulumi.Input<String>? region;
  /// The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  final pulumi.Input<String>? serviceAccountEmail;
  /// If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  final pulumi.Input<bool>? skipWaitOnJobTermination;
  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  final pulumi.Input<String>? subnetwork;
  /// A writeable location on GCS for the Dataflow job to dump its temporary data.
  ///
  /// - - -
  final pulumi.Input<String> tempGcsLocation;
  /// The GCS path to the Dataflow job template.
  final pulumi.Input<String> templateGcsPath;
  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  final pulumi.Input<Map<String, String>>? transformNameMapping;
  /// The zone in which the created job should run. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [JobArgs].
  /// [additionalExperiments] List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  /// [enableStreamingEngine] Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  /// [ipConfiguration] The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  /// [kmsKeyName] The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  /// [labels] User labels to be specified for the job. Keys and values should follow the restrictions
  /// [machineType] The machine type to use for the job.
  /// [maxWorkers] The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  /// [name] A unique name for the resource, required by Dataflow.
  /// [network] The network to which VMs will be assigned. If it is not provided, "default" will be used.
  /// [onDelete] One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  /// [parameters] **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// [project] The project in which the resource belongs. If it is not provided, the provider project is used.
  /// [region] The region in which the created job should run.
  /// [serviceAccountEmail] The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  /// [skipWaitOnJobTermination] If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  /// [subnetwork] The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  /// [tempGcsLocation] A writeable location on GCS for the Dataflow job to dump its temporary data.
  /// [templateGcsPath] The GCS path to the Dataflow job template.
  /// [transformNameMapping] Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  /// [zone] The zone in which the created job should run. If it is not provided, the provider zone is used.
  JobArgs({
    pulumi.Output<List<String>>? additionalExperiments,
    pulumi.Output<bool>? enableStreamingEngine,
    pulumi.Output<String>? ipConfiguration,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? machineType,
    pulumi.Output<int>? maxWorkers,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? onDelete,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceAccountEmail,
    pulumi.Output<bool>? skipWaitOnJobTermination,
    pulumi.Output<String>? subnetwork,
    required pulumi.Output<String> tempGcsLocation,
    required pulumi.Output<String> templateGcsPath,
    pulumi.Output<Map<String, String>>? transformNameMapping,
    pulumi.Output<String>? zone,
  }) :
      additionalExperiments = pulumi.Input.asOptionalInput<List<String>>(additionalExperiments),
      enableStreamingEngine = pulumi.Input.asOptionalInput<bool>(enableStreamingEngine),
      ipConfiguration = pulumi.Input.asOptionalInput<String>(ipConfiguration),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      maxWorkers = pulumi.Input.asOptionalInput<int>(maxWorkers),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      onDelete = pulumi.Input.asOptionalInput<String>(onDelete),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceAccountEmail = pulumi.Input.asOptionalInput<String>(serviceAccountEmail),
      skipWaitOnJobTermination = pulumi.Input.asOptionalInput<bool>(skipWaitOnJobTermination),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      tempGcsLocation = pulumi.Input.asInput<String>(tempGcsLocation),
      templateGcsPath = pulumi.Input.asInput<String>(templateGcsPath),
      transformNameMapping = pulumi.Input.asOptionalInput<Map<String, String>>(transformNameMapping),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'enableStreamingEngine': ?enableStreamingEngine,
      'ipConfiguration': ?ipConfiguration,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'name': ?name,
      'network': ?network,
      'onDelete': ?onDelete,
      'parameters': ?parameters,
      'project': ?project,
      'region': ?region,
      'serviceAccountEmail': ?serviceAccountEmail,
      'skipWaitOnJobTermination': ?skipWaitOnJobTermination,
      'subnetwork': ?subnetwork,
      'tempGcsLocation': tempGcsLocation,
      'templateGcsPath': templateGcsPath,
      'transformNameMapping': ?transformNameMapping,
      'zone': ?zone,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      additionalExperiments: map['additionalExperiments'] == null ? null : pulumi.Output.create<List<String>>((map['additionalExperiments'] as List).cast<String>()),
      enableStreamingEngine: map['enableStreamingEngine'] == null ? null : pulumi.Output.create<bool>(map['enableStreamingEngine'] as bool),
      ipConfiguration: map['ipConfiguration'] == null ? null : pulumi.Output.create<String>(map['ipConfiguration'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      maxWorkers: map['maxWorkers'] == null ? null : pulumi.Output.create<int>(map['maxWorkers'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      onDelete: map['onDelete'] == null ? null : pulumi.Output.create<String>(map['onDelete'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : pulumi.Output.create<String>(map['serviceAccountEmail'] as String),
      skipWaitOnJobTermination: map['skipWaitOnJobTermination'] == null ? null : pulumi.Output.create<bool>(map['skipWaitOnJobTermination'] as bool),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      tempGcsLocation: pulumi.Output.create<String>(map['tempGcsLocation'] as String),
      templateGcsPath: pulumi.Output.create<String>(map['templateGcsPath'] as String),
      transformNameMapping: map['transformNameMapping'] == null ? null : pulumi.Output.create<Map<String, String>>((map['transformNameMapping'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

