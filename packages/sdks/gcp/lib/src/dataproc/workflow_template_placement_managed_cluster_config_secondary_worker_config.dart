// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_accelerator.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_disk_config.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_managed_group_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<
    List<
      WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator
    >
  >?
  accelerators;

  /// Optional. Disk option config settings.
  final pulumi.Input<
    WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig
  >?
  diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default.
  final pulumi.Input<String>? image;

  /// Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group.
  final pulumi.Input<List<String>>? instanceNames;

  /// Output only. Specifies that this instance group contains preemptible instances.
  final pulumi.Input<bool>? isPreemptible;

  /// Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`.
  final pulumi.Input<String>? machineType;

  /// Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final pulumi.Input<
    List<
      WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig
    >
  >?
  managedGroupConfigs;

  /// Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc &gt; Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String>? minCpuPlatform;

  /// Optional. The number of VM instances in the instance group. For [HA cluster](https://www.terraform.io/dataproc/docs/concepts/configuring-clusters/high-availability) master_config groups, **must be set to 3**. For standard cluster master_config groups, **must be set to 1**.
  final pulumi.Input<int>? numInstances;

  /// Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  final pulumi.Input<String>? preemptibility;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig].
  /// [accelerators] Optional. The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Optional. Disk option config settings.
  /// [image] Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default.
  /// [instanceNames] Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group.
  /// [isPreemptible] Output only. Specifies that this instance group contains preemptible instances.
  /// [machineType] Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`.
  /// [managedGroupConfigs] Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  /// [minCpuPlatform] Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc &gt; Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [numInstances] Optional. The number of VM instances in the instance group. For [HA cluster](https://www.terraform.io/dataproc/docs/concepts/configuring-clusters/high-availability) master_config groups, **must be set to 3**. For standard cluster master_config groups, **must be set to 1**.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig({
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
      'accelerators':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator
            >,
            List<Map<String, dynamic>>
          >(
            accelerators,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'diskConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig,
            Map<String, dynamic>
          >(diskConfig, (value) => value.toMap()),
      'image': ?image,
      'instanceNames': ?instanceNames,
      'isPreemptible': ?isPreemptible,
      'machineType': ?machineType,
      'managedGroupConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig
            >,
            List<Map<String, dynamic>>
          >(
            managedGroupConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
      'preemptibility': ?preemptibility,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig(
      accelerators: (() {
        final guardedValue = map['accelerators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator
          >(
            guardedValue,
            (value) =>
                WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      diskConfig: (() {
        final guardedValue = map['diskConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceNames: (() {
        final guardedValue = map['instanceNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      isPreemptible: (() {
        final guardedValue = map['isPreemptible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedGroupConfigs: (() {
        final guardedValue = map['managedGroupConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig
          >(
            guardedValue,
            (value) =>
                WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      minCpuPlatform: (() {
        final guardedValue = map['minCpuPlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numInstances: (() {
        final guardedValue = map['numInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preemptibility: (() {
        final guardedValue = map['preemptibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
