// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_master_config_accelerator.dart';
import 'workflow_template_placement_managed_cluster_config_master_config_disk_config.dart';
import 'workflow_template_placement_managed_cluster_config_master_config_managed_group_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigMasterConfig {
  /// The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator>>? accelerators;
  /// Disk option config settings.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig>? diskConfig;
  /// The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default.
  final pulumi.Input<String>? image;
  /// Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group.
  final pulumi.Input<List<String>>? instanceNames;
  /// Output only. Specifies that this instance group contains preemptible instances.
  final pulumi.Input<bool>? isPreemptible;
  /// The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/(https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`.
  final pulumi.Input<String>? machineType;
  /// Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig>>? managedGroupConfigs;
  /// Specifies the minimum cpu platform for the Instance Group. See [Minimum CPU platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String>? minCpuPlatform;
  /// The number of VM instances in the instance group. For master instance groups, must be set to 1.
  final pulumi.Input<int>? numInstances;
  /// Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  final pulumi.Input<String>? preemptibility;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfig].
  /// [accelerators] The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Disk option config settings.
  /// [image] The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default.
  /// [instanceNames] Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group.
  /// [isPreemptible] Output only. Specifies that this instance group contains preemptible instances.
  /// [machineType] The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/(https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`.
  /// [managedGroupConfigs] Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  /// [minCpuPlatform] Specifies the minimum cpu platform for the Instance Group. See [Minimum CPU platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [numInstances] The number of VM instances in the instance group. For master instance groups, must be set to 1.
  /// [preemptibility] Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  WorkflowTemplatePlacementManagedClusterConfigMasterConfig({
    this.accelerators,
    this.diskConfig,
    this.image,
    this.instanceNames,
    this.isPreemptible,
    this.machineType,
    this.managedGroupConfigs,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'image': ?image,
      'instanceNames': ?instanceNames,
      'isPreemptible': ?isPreemptible,
      'machineType': ?machineType,
      'managedGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig>, List<Map<String, dynamic>>>(managedGroupConfigs, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
      'preemptibility': ?preemptibility,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfig(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator>(map['accelerators'], (value) => WorkflowTemplatePlacementManagedClusterConfigMasterConfigAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskConfig: map['diskConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfig.fromMap((map['diskConfig'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      instanceNames: map['instanceNames'] == null ? null : ((map['instanceNames'] as List).cast<String>()).input(),
      isPreemptible: map['isPreemptible'] == null ? null : (map['isPreemptible'] as bool).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      managedGroupConfigs: map['managedGroupConfigs'] == null ? null : (pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig>(map['managedGroupConfigs'], (value) => WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      numInstances: map['numInstances'] == null ? null : (map['numInstances'] as int).input(),
      preemptibility: map['preemptibility'] == null ? null : (map['preemptibility'] as String).input(),
    );
  }
}

