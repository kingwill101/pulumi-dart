// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_flex_template_runtime_environment_flexrs_goal.dart';
import 'google_cloud_datapipelines_v1_flex_template_runtime_environment_ip_configuration.dart';

/// The environment values to be set at runtime for a Flex Template.
class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment {
  /// Additional experiment flags for the job.
  final pulumi.Input<List<String>>? additionalExperiments;
  /// Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions). An object containing a list of key/value pairs. Example: `{ "name": "wrench", "mass": "1kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? additionalUserLabels;
  /// Whether to enable Streaming Engine for the job.
  final pulumi.Input<bool>? enableStreamingEngine;
  /// Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
  final pulumi.Input<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal>? flexrsGoal;
  /// Configuration for VM IPs.
  final pulumi.Input<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration>? ipConfiguration;
  /// Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  final pulumi.Input<String>? kmsKeyName;
  /// The machine type to use for the job. Defaults to the value from the template if not specified.
  final pulumi.Input<String>? machineType;
  /// The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final pulumi.Input<int>? maxWorkers;
  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final pulumi.Input<String>? network;
  /// The initial number of Compute Engine instances for the job.
  final pulumi.Input<int>? numWorkers;
  /// The email address of the service account to run the job as.
  final pulumi.Input<String>? serviceAccountEmail;
  /// Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final pulumi.Input<String>? subnetwork;
  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final pulumi.Input<String>? tempLocation;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, defaults to the control plane region.
  final pulumi.Input<String>? workerRegion;
  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  final pulumi.Input<String>? workerZone;
  /// The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  final pulumi.Input<String>? zone;

  /// Creates a new [GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment].
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
  const GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.enableStreamingEngine,
    this.flexrsGoal,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'additionalUserLabels': ?additionalUserLabels,
      'enableStreamingEngine': ?enableStreamingEngine,
      'flexrsGoal': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal, String>(flexrsGoal, (value) => value.wireValue),
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration, String>(ipConfiguration, (value) => value.wireValue),
      'kmsKeyName': ?kmsKeyName,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'network': ?network,
      'numWorkers': ?numWorkers,
      'serviceAccountEmail': ?serviceAccountEmail,
      'subnetwork': ?subnetwork,
      'tempLocation': ?tempLocation,
      'workerRegion': ?workerRegion,
      'workerZone': ?workerZone,
      'zone': ?zone,
    };
  }

  factory GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment(
      additionalExperiments: (() { final guardedValue = map['additionalExperiments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      additionalUserLabels: (() { final guardedValue = map['additionalUserLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableStreamingEngine: (() { final guardedValue = map['enableStreamingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flexrsGoal: (() { final guardedValue = map['flexrsGoal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal.fromValue(guardedValue as String)); })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration.fromValue(guardedValue as String)); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWorkers: (() { final guardedValue = map['maxWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numWorkers: (() { final guardedValue = map['numWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tempLocation: (() { final guardedValue = map['tempLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerRegion: (() { final guardedValue = map['workerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerZone: (() { final guardedValue = map['workerZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
