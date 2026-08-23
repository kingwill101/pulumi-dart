// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_settings_response.dart';
import 'disk_response.dart';
import 'package_response.dart';
import 'sdk_harness_container_image_response.dart';
import 'task_runner_settings_response.dart';

/// Describes one particular pool of Cloud Dataflow workers to be instantiated by the Cloud Dataflow service in order to perform the computations required by a job. Note that a workflow job may use multiple pools, in order to match the various computational requirements of the various stages of the job.
class WorkerPoolResponse {
  /// Settings for autoscaling of this WorkerPool.
  final pulumi.Input<AutoscalingSettingsResponse> autoscalingSettings;
  /// Data disks that are used by a VM in this workflow.
  final pulumi.Input<List<DiskResponse>> dataDisks;
  /// The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
  final pulumi.Input<String> defaultPackageSet;
  /// Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<int> diskSizeGb;
  /// Fully qualified source image for disks.
  final pulumi.Input<String> diskSourceImage;
  /// Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<String> diskType;
  /// Configuration for VM IPs.
  final pulumi.Input<String> ipConfiguration;
  /// The kind of the worker pool; currently only `harness` and `shuffle` are supported.
  final pulumi.Input<String> kind;
  /// Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<String> machineType;
  /// Metadata to set on the Google Compute Engine VMs.
  final pulumi.Input<Map<String, String>> metadata;
  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final pulumi.Input<String> network;
  /// The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).
  final pulumi.Input<int> numThreadsPerWorker;
  /// Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<int> numWorkers;
  /// The action to take on host maintenance, as defined by the Google Compute Engine API.
  final pulumi.Input<String> onHostMaintenance;
  /// Packages to be installed on workers.
  final pulumi.Input<List<PackageResponse>> packages;
  /// Extra arguments for this worker pool.
  final pulumi.Input<Map<String, String>> poolArgs;
  /// Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.
  final pulumi.Input<List<SdkHarnessContainerImageResponse>> sdkHarnessContainerImages;
  /// Subnetwork to which VMs will be assigned, if desired. Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  final pulumi.Input<String> subnetwork;
  /// Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.
  final pulumi.Input<TaskRunnerSettingsResponse> taskrunnerSettings;
  /// Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<String> teardownPolicy;
  /// Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  final pulumi.Input<String> workerHarnessContainerImage;
  /// Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<String> zone;

  /// Creates a new [WorkerPoolResponse].
  /// [autoscalingSettings] Settings for autoscaling of this WorkerPool.
  /// [dataDisks] Data disks that are used by a VM in this workflow.
  /// [defaultPackageSet] The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
  /// [diskSizeGb] Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  /// [diskSourceImage] Fully qualified source image for disks.
  /// [diskType] Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.
  /// [ipConfiguration] Configuration for VM IPs.
  /// [kind] The kind of the worker pool; currently only `harness` and `shuffle` are supported.
  /// [machineType] Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service will attempt to choose a reasonable default.
  /// [metadata] Metadata to set on the Google Compute Engine VMs.
  /// [network] Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numThreadsPerWorker] The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).
  /// [numWorkers] Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.
  /// [onHostMaintenance] The action to take on host maintenance, as defined by the Google Compute Engine API.
  /// [packages] Packages to be installed on workers.
  /// [poolArgs] Extra arguments for this worker pool.
  /// [sdkHarnessContainerImages] Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.
  /// [subnetwork] Subnetwork to which VMs will be assigned, if desired. Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  /// [taskrunnerSettings] Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.
  /// [teardownPolicy] Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
  /// [workerHarnessContainerImage] Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  /// [zone] Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.
  const WorkerPoolResponse({
    required this.autoscalingSettings,
    required this.dataDisks,
    required this.defaultPackageSet,
    required this.diskSizeGb,
    required this.diskSourceImage,
    required this.diskType,
    required this.ipConfiguration,
    required this.kind,
    required this.machineType,
    required this.metadata,
    required this.network,
    required this.numThreadsPerWorker,
    required this.numWorkers,
    required this.onHostMaintenance,
    required this.packages,
    required this.poolArgs,
    required this.sdkHarnessContainerImages,
    required this.subnetwork,
    required this.taskrunnerSettings,
    required this.teardownPolicy,
    required this.workerHarnessContainerImage,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': pulumi.Input.mapInputValue<AutoscalingSettingsResponse, Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap()),
      'dataDisks': pulumi.Input.mapInputValue<List<DiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultPackageSet': defaultPackageSet,
      'diskSizeGb': diskSizeGb,
      'diskSourceImage': diskSourceImage,
      'diskType': diskType,
      'ipConfiguration': ipConfiguration,
      'kind': kind,
      'machineType': machineType,
      'metadata': metadata,
      'network': network,
      'numThreadsPerWorker': numThreadsPerWorker,
      'numWorkers': numWorkers,
      'onHostMaintenance': onHostMaintenance,
      'packages': pulumi.Input.mapInputValue<List<PackageResponse>, List<Map<String, dynamic>>>(packages, (value) => pulumi.Input.encodeList<PackageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolArgs': poolArgs,
      'sdkHarnessContainerImages': pulumi.Input.mapInputValue<List<SdkHarnessContainerImageResponse>, List<Map<String, dynamic>>>(sdkHarnessContainerImages, (value) => pulumi.Input.encodeList<SdkHarnessContainerImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetwork': subnetwork,
      'taskrunnerSettings': pulumi.Input.mapInputValue<TaskRunnerSettingsResponse, Map<String, dynamic>>(taskrunnerSettings, (value) => value.toMap()),
      'teardownPolicy': teardownPolicy,
      'workerHarnessContainerImage': workerHarnessContainerImage,
      'zone': zone,
    };
  }

  factory WorkerPoolResponse.fromMap(Map<String, dynamic> map) {
    return WorkerPoolResponse(
      autoscalingSettings: pulumi.Input.fromValue(AutoscalingSettingsResponse.fromMap((map['autoscalingSettings']! as Map).cast<String, dynamic>())),
      dataDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<DiskResponse>(map['dataDisks']!, (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>()))),
      defaultPackageSet: pulumi.Input.fromValue(map['defaultPackageSet'] as String),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      diskSourceImage: pulumi.Input.fromValue(map['diskSourceImage'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      ipConfiguration: pulumi.Input.fromValue(map['ipConfiguration'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      network: pulumi.Input.fromValue(map['network'] as String),
      numThreadsPerWorker: pulumi.Input.fromValue(map['numThreadsPerWorker'] as int),
      numWorkers: pulumi.Input.fromValue(map['numWorkers'] as int),
      onHostMaintenance: pulumi.Input.fromValue(map['onHostMaintenance'] as String),
      packages: pulumi.Input.fromValue(pulumi.Input.decodeList<PackageResponse>(map['packages']!, (value) => PackageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      poolArgs: pulumi.Input.fromValue((map['poolArgs'] as Map).cast<String, String>()),
      sdkHarnessContainerImages: pulumi.Input.fromValue(pulumi.Input.decodeList<SdkHarnessContainerImageResponse>(map['sdkHarnessContainerImages']!, (value) => SdkHarnessContainerImageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      taskrunnerSettings: pulumi.Input.fromValue(TaskRunnerSettingsResponse.fromMap((map['taskrunnerSettings']! as Map).cast<String, dynamic>())),
      teardownPolicy: pulumi.Input.fromValue(map['teardownPolicy'] as String),
      workerHarnessContainerImage: pulumi.Input.fromValue(map['workerHarnessContainerImage'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
