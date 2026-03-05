// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment_ip_configuration.dart';

/// The environment values to set at runtime.
class RuntimeEnvironment {
  /// Optional. Additional experiment flags for the job, specified with the `--experiments` option.
  final pulumi.Input<List<String>>? additionalExperiments;
  /// Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? additionalUserLabels;
  /// Optional. Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  final pulumi.Input<bool>? bypassTempDirValidation;
  /// Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance.
  final pulumi.Input<int>? diskSizeGb;
  /// Optional. Whether to enable Streaming Engine for the job.
  final pulumi.Input<bool>? enableStreamingEngine;
  /// Optional. Configuration for VM IPs.
  final pulumi.Input<RuntimeEnvironmentIpConfiguration>? ipConfiguration;
  /// Optional. Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  final pulumi.Input<String>? kmsKeyName;
  /// Optional. The machine type to use for the job. Defaults to the value from the template if not specified.
  final pulumi.Input<String>? machineType;
  /// Optional. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. The default value is 1.
  final pulumi.Input<int>? maxWorkers;
  /// Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final pulumi.Input<String>? network;
  /// Optional. The initial number of Google Compute Engine instances for the job. The default value is 11.
  final pulumi.Input<int>? numWorkers;
  /// Optional. The email address of the service account to run the job as.
  final pulumi.Input<String>? serviceAccountEmail;
  /// Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final pulumi.Input<String>? subnetwork;
  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final pulumi.Input<String> tempLocation;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final pulumi.Input<String> workerRegion;
  /// Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  final pulumi.Input<String>? workerZone;
  /// Optional. The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  final pulumi.Input<String>? zone;

  /// Creates a new [RuntimeEnvironment].
  /// [additionalExperiments] Optional. Additional experiment flags for the job, specified with the `--experiments` option.
  /// [additionalUserLabels] Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  /// [bypassTempDirValidation] Optional. Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  /// [diskSizeGb] Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance.
  /// [enableStreamingEngine] Optional. Whether to enable Streaming Engine for the job.
  /// [ipConfiguration] Optional. Configuration for VM IPs.
  /// [kmsKeyName] Optional. Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  /// [machineType] Optional. The machine type to use for the job. Defaults to the value from the template if not specified.
  /// [maxWorkers] Optional. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. The default value is 1.
  /// [network] Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numWorkers] Optional. The initial number of Google Compute Engine instances for the job. The default value is 11.
  /// [serviceAccountEmail] Optional. The email address of the service account to run the job as.
  /// [subnetwork] Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  /// [zone] Optional. The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  RuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.diskSizeGb,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    required this.tempLocation,
    required this.workerRegion,
    this.workerZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'additionalUserLabels': ?additionalUserLabels,
      'bypassTempDirValidation': ?bypassTempDirValidation,
      'diskSizeGb': ?diskSizeGb,
      'enableStreamingEngine': ?enableStreamingEngine,
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<RuntimeEnvironmentIpConfiguration, String>(ipConfiguration, (value) => value.wireValue),
      'kmsKeyName': ?kmsKeyName,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'network': ?network,
      'numWorkers': ?numWorkers,
      'serviceAccountEmail': ?serviceAccountEmail,
      'subnetwork': ?subnetwork,
      'tempLocation': tempLocation,
      'workerRegion': workerRegion,
      'workerZone': ?workerZone,
      'zone': ?zone,
    };
  }

  factory RuntimeEnvironment.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironment(
      additionalExperiments: (() { final guardedValue = map['additionalExperiments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      additionalUserLabels: (() { final guardedValue = map['additionalUserLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bypassTempDirValidation: (() { final guardedValue = map['bypassTempDirValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableStreamingEngine: (() { final guardedValue = map['enableStreamingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeEnvironmentIpConfiguration.fromValue(guardedValue as String)); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWorkers: (() { final guardedValue = map['maxWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numWorkers: (() { final guardedValue = map['numWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tempLocation: pulumi.Input.fromValue(map['tempLocation'] as String),
      workerRegion: pulumi.Input.fromValue(map['workerRegion'] as String),
      workerZone: (() { final guardedValue = map['workerZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

