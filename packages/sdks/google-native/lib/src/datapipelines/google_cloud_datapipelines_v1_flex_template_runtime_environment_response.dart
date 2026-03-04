// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The environment values to be set at runtime for a Flex Template.
class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse {
  /// Additional experiment flags for the job.
  final pulumi.Input<List<String>> additionalExperiments;

  /// Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions). An object containing a list of key/value pairs. Example: `{ "name": "wrench", "mass": "1kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>> additionalUserLabels;

  /// Whether to enable Streaming Engine for the job.
  final pulumi.Input<bool> enableStreamingEngine;

  /// Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
  final pulumi.Input<String> flexrsGoal;

  /// Configuration for VM IPs.
  final pulumi.Input<String> ipConfiguration;

  /// Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  final pulumi.Input<String> kmsKeyName;

  /// The machine type to use for the job. Defaults to the value from the template if not specified.
  final pulumi.Input<String> machineType;

  /// The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final pulumi.Input<int> maxWorkers;

  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final pulumi.Input<String> network;

  /// The initial number of Compute Engine instances for the job.
  final pulumi.Input<int> numWorkers;

  /// The email address of the service account to run the job as.
  final pulumi.Input<String> serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final pulumi.Input<String> subnetwork;

  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final pulumi.Input<String> tempLocation;

  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, defaults to the control plane region.
  final pulumi.Input<String> workerRegion;

  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  final pulumi.Input<String> workerZone;

  /// The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  final pulumi.Input<String> zone;

  /// Creates a new [GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse].
  /// [additionalExperiments] Additional experiment flags for the job.
  /// [additionalUserLabels] Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions). An object containing a list of key/value pairs. Example: `{ "name": "wrench", "mass": "1kg", "count": "3" }`.
  /// [enableStreamingEngine] Whether to enable Streaming Engine for the job.
  /// [flexrsGoal] Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
  /// [ipConfiguration] Configuration for VM IPs.
  /// [kmsKeyName] Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  /// [machineType] The machine type to use for the job. Defaults to the value from the template if not specified.
  /// [maxWorkers] The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  /// [network] Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numWorkers] The initial number of Compute Engine instances for the job.
  /// [serviceAccountEmail] The email address of the service account to run the job as.
  /// [subnetwork] Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, defaults to the control plane region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  /// [zone] The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse({
    required this.additionalExperiments,
    required this.additionalUserLabels,
    required this.enableStreamingEngine,
    required this.flexrsGoal,
    required this.ipConfiguration,
    required this.kmsKeyName,
    required this.machineType,
    required this.maxWorkers,
    required this.network,
    required this.numWorkers,
    required this.serviceAccountEmail,
    required this.subnetwork,
    required this.tempLocation,
    required this.workerRegion,
    required this.workerZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': additionalExperiments,
      'additionalUserLabels': additionalUserLabels,
      'enableStreamingEngine': enableStreamingEngine,
      'flexrsGoal': flexrsGoal,
      'ipConfiguration': ipConfiguration,
      'kmsKeyName': kmsKeyName,
      'machineType': machineType,
      'maxWorkers': maxWorkers,
      'network': network,
      'numWorkers': numWorkers,
      'serviceAccountEmail': serviceAccountEmail,
      'subnetwork': subnetwork,
      'tempLocation': tempLocation,
      'workerRegion': workerRegion,
      'workerZone': workerZone,
      'zone': zone,
    };
  }

  factory GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse(
      additionalExperiments: pulumi.Input.fromValue(
        (map['additionalExperiments'] as List).cast<String>(),
      ),
      additionalUserLabels: pulumi.Input.fromValue(
        (map['additionalUserLabels'] as Map).cast<String, String>(),
      ),
      enableStreamingEngine: pulumi.Input.fromValue(
        map['enableStreamingEngine'] as bool,
      ),
      flexrsGoal: pulumi.Input.fromValue(map['flexrsGoal'] as String),
      ipConfiguration: pulumi.Input.fromValue(map['ipConfiguration'] as String),
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxWorkers: pulumi.Input.fromValue(map['maxWorkers'] as int),
      network: pulumi.Input.fromValue(map['network'] as String),
      numWorkers: pulumi.Input.fromValue(map['numWorkers'] as int),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tempLocation: pulumi.Input.fromValue(map['tempLocation'] as String),
      workerRegion: pulumi.Input.fromValue(map['workerRegion'] as String),
      workerZone: pulumi.Input.fromValue(map['workerZone'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
