// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  final pulumi.Input<List<String>>? additionalExperiments;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  final pulumi.Input<bool>? enableStreamingEngine;
  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  final pulumi.Input<String>? ipConfiguration;
  /// The unique ID of this job.
  final pulumi.Input<String>? jobId;
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
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region in which the created job should run.
  final pulumi.Input<String>? region;
  /// The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  final pulumi.Input<String>? serviceAccountEmail;
  /// If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  final pulumi.Input<bool>? skipWaitOnJobTermination;
  /// The current state of the resource, selected from the [JobState enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobState)
  final pulumi.Input<String>? state;
  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  final pulumi.Input<String>? subnetwork;
  /// A writeable location on GCS for the Dataflow job to dump its temporary data.
  ///
  /// - - -
  final pulumi.Input<String>? tempGcsLocation;
  /// The GCS path to the Dataflow job template.
  final pulumi.Input<String>? templateGcsPath;
  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  final pulumi.Input<Map<String, String>>? transformNameMapping;
  /// The type of this job, selected from the [JobType enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobType)
  final pulumi.Input<String>? type;
  /// The zone in which the created job should run. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [JobState].
  /// [additionalExperiments] List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableStreamingEngine] Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  /// [ipConfiguration] The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  /// [jobId] The unique ID of this job.
  /// [kmsKeyName] The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  /// [labels] User labels to be specified for the job. Keys and values should follow the restrictions
  /// [machineType] The machine type to use for the job.
  /// [maxWorkers] The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  /// [name] A unique name for the resource, required by Dataflow.
  /// [network] The network to which VMs will be assigned. If it is not provided, "default" will be used.
  /// [onDelete] One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  /// [parameters] **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// [project] The project in which the resource belongs. If it is not provided, the provider project is used.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] The region in which the created job should run.
  /// [serviceAccountEmail] The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  /// [skipWaitOnJobTermination] If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  /// [state] The current state of the resource, selected from the [JobState enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobState)
  /// [subnetwork] The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  /// [tempGcsLocation] A writeable location on GCS for the Dataflow job to dump its temporary data.
  /// [templateGcsPath] The GCS path to the Dataflow job template.
  /// [transformNameMapping] Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  /// [type] The type of this job, selected from the [JobType enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobType)
  /// [zone] The zone in which the created job should run. If it is not provided, the provider zone is used.
  JobState({
    this.additionalExperiments,
    this.effectiveLabels,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.jobId,
    this.kmsKeyName,
    this.labels,
    this.machineType,
    this.maxWorkers,
    this.name,
    this.network,
    this.onDelete,
    this.parameters,
    this.project,
    this.pulumiLabels,
    this.region,
    this.serviceAccountEmail,
    this.skipWaitOnJobTermination,
    this.state,
    this.subnetwork,
    this.tempGcsLocation,
    this.templateGcsPath,
    this.transformNameMapping,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'effectiveLabels': ?effectiveLabels,
      'enableStreamingEngine': ?enableStreamingEngine,
      'ipConfiguration': ?ipConfiguration,
      'jobId': ?jobId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'name': ?name,
      'network': ?network,
      'onDelete': ?onDelete,
      'parameters': ?parameters,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'serviceAccountEmail': ?serviceAccountEmail,
      'skipWaitOnJobTermination': ?skipWaitOnJobTermination,
      'state': ?state,
      'subnetwork': ?subnetwork,
      'tempGcsLocation': ?tempGcsLocation,
      'templateGcsPath': ?templateGcsPath,
      'transformNameMapping': ?transformNameMapping,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      additionalExperiments: map['additionalExperiments'] == null ? null : ((map['additionalExperiments']! as List).cast<String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableStreamingEngine: map['enableStreamingEngine'] == null ? null : (map['enableStreamingEngine']! as bool).input(),
      ipConfiguration: map['ipConfiguration'] == null ? null : (map['ipConfiguration']! as String).input(),
      jobId: map['jobId'] == null ? null : (map['jobId']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      maxWorkers: map['maxWorkers'] == null ? null : (map['maxWorkers']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      onDelete: map['onDelete'] == null ? null : (map['onDelete']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail']! as String).input(),
      skipWaitOnJobTermination: map['skipWaitOnJobTermination'] == null ? null : (map['skipWaitOnJobTermination']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      tempGcsLocation: map['tempGcsLocation'] == null ? null : (map['tempGcsLocation']! as String).input(),
      templateGcsPath: map['templateGcsPath'] == null ? null : (map['templateGcsPath']! as String).input(),
      transformNameMapping: map['transformNameMapping'] == null ? null : ((map['transformNameMapping']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

