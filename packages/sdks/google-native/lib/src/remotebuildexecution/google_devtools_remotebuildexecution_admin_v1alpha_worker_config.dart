// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_accelerator_config.dart';

/// Defines the configuration to be used for creating workers in the worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig {
  /// The accelerator card attached to each VM.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig>? accelerator;
  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/
  final pulumi.Input<String> diskSizeGb;
  /// Disk Type to use for the worker. See [Storage options](https://cloud.google.com/compute/docs/disks/#introduction). Currently only `pd-standard` and `pd-ssd` are supported.
  final pulumi.Input<String> diskType;
  /// Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Machine type of the worker, such as `e2-standard-2`. See https://cloud.google.com/compute/docs/machine-types for a list of supported machine types. Note that `f1-micro` and `g1-small` are not yet supported.
  final pulumi.Input<String> machineType;
  /// The maximum number of actions a worker can execute concurrently.
  final pulumi.Input<String>? maxConcurrentActions;
  /// Minimum CPU platform to use when creating the worker. See [CPU Platforms](https://cloud.google.com/compute/docs/cpu-platforms).
  final pulumi.Input<String>? minCpuPlatform;
  /// Determines the type of network access granted to workers. Possible values: - "public": Workers can connect to the public internet. - "private": Workers can only connect to Google APIs and services. - "restricted-private": Workers can only connect to Google APIs that are reachable through `restricted.googleapis.com` (`199.36.153.4/30`).
  final pulumi.Input<String>? networkAccess;
  /// Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won't be preempted). See [Preemptible VMs](https://cloud.google.com/preemptible-vms/) for more details.
  final pulumi.Input<bool>? reserved;
  /// The node type name to be used for sole-tenant nodes.
  final pulumi.Input<String>? soleTenantNodeType;
  /// The name of the image used by each VM.
  final pulumi.Input<String>? vmImage;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig].
  /// [accelerator] The accelerator card attached to each VM.
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/
  /// [diskType] Disk Type to use for the worker. See [Storage options](https://cloud.google.com/compute/docs/disks/#introduction). Currently only `pd-standard` and `pd-ssd` are supported.
  /// [labels] Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
  /// [machineType] Machine type of the worker, such as `e2-standard-2`. See https://cloud.google.com/compute/docs/machine-types for a list of supported machine types. Note that `f1-micro` and `g1-small` are not yet supported.
  /// [maxConcurrentActions] The maximum number of actions a worker can execute concurrently.
  /// [minCpuPlatform] Minimum CPU platform to use when creating the worker. See [CPU Platforms](https://cloud.google.com/compute/docs/cpu-platforms).
  /// [networkAccess] Determines the type of network access granted to workers. Possible values: - "public": Workers can connect to the public internet. - "private": Workers can only connect to Google APIs and services. - "restricted-private": Workers can only connect to Google APIs that are reachable through `restricted.googleapis.com` (`199.36.153.4/30`).
  /// [reserved] Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won't be preempted). See [Preemptible VMs](https://cloud.google.com/preemptible-vms/) for more details.
  /// [soleTenantNodeType] The node type name to be used for sole-tenant nodes.
  /// [vmImage] The name of the image used by each VM.
  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig({
    this.accelerator,
    required this.diskSizeGb,
    required this.diskType,
    this.labels,
    required this.machineType,
    this.maxConcurrentActions,
    this.minCpuPlatform,
    this.networkAccess,
    this.reserved,
    this.soleTenantNodeType,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig, Map<String, dynamic>>(accelerator, (value) => value.toMap()),
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'labels': ?labels,
      'machineType': machineType,
      'maxConcurrentActions': ?maxConcurrentActions,
      'minCpuPlatform': ?minCpuPlatform,
      'networkAccess': ?networkAccess,
      'reserved': ?reserved,
      'soleTenantNodeType': ?soleTenantNodeType,
      'vmImage': ?vmImage,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
      accelerator: (() { final guardedValue = map['accelerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxConcurrentActions: (() { final guardedValue = map['maxConcurrentActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAccess: (() { final guardedValue = map['networkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      soleTenantNodeType: (() { final guardedValue = map['soleTenantNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

