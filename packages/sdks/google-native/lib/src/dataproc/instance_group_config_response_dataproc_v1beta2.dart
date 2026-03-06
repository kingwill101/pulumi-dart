// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_dataproc_v1beta2.dart';
import 'disk_config_response_dataproc_v1beta2.dart';
import 'instance_reference_response_dataproc_v1beta2.dart';
import 'managed_group_config_response_dataproc_v1beta2.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfigResponseDataprocV1beta2 {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final pulumi.Input<List<AcceleratorConfigResponseDataprocV1beta2>> accelerators;
  /// Optional. Disk option config settings.
  final pulumi.Input<DiskConfigResponseDataprocV1beta2> diskConfig;
  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final pulumi.Input<String> imageUri;
  /// The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  final pulumi.Input<List<String>> instanceNames;
  /// List of references to Compute Engine instances.
  final pulumi.Input<List<InstanceReferenceResponseDataprocV1beta2>> instanceReferences;
  /// Specifies that this instance group contains preemptible instances.
  final pulumi.Input<bool> isPreemptible;
  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final pulumi.Input<String> machineTypeUri;
  /// The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final pulumi.Input<ManagedGroupConfigResponseDataprocV1beta2> managedGroupConfig;
  /// Specifies the minimum cpu platform for the Instance Group. See Dataproc -&gt; Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final pulumi.Input<String> minCpuPlatform;
  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final pulumi.Input<int> numInstances;
  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final pulumi.Input<String> preemptibility;

  /// Creates a new [InstanceGroupConfigResponseDataprocV1beta2].
  /// [accelerators] Optional. The Compute Engine accelerator configuration for these instances.
  /// [diskConfig] Optional. Disk option config settings.
  /// [imageUri] Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  /// [instanceNames] The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  /// [instanceReferences] List of references to Compute Engine instances.
  /// [isPreemptible] Specifies that this instance group contains preemptible instances.
  /// [machineTypeUri] Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  /// [managedGroupConfig] The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  /// [minCpuPlatform] Specifies the minimum cpu platform for the Instance Group. See Dataproc -&gt; Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  /// [numInstances] Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  /// [preemptibility] Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  const InstanceGroupConfigResponseDataprocV1beta2({
    required this.accelerators,
    required this.diskConfig,
    required this.imageUri,
    required this.instanceNames,
    required this.instanceReferences,
    required this.isPreemptible,
    required this.machineTypeUri,
    required this.managedGroupConfig,
    required this.minCpuPlatform,
    required this.numInstances,
    required this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponseDataprocV1beta2>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponseDataprocV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': pulumi.Input.mapInputValue<DiskConfigResponseDataprocV1beta2, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'imageUri': imageUri,
      'instanceNames': instanceNames,
      'instanceReferences': pulumi.Input.mapInputValue<List<InstanceReferenceResponseDataprocV1beta2>, List<Map<String, dynamic>>>(instanceReferences, (value) => pulumi.Input.encodeList<InstanceReferenceResponseDataprocV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isPreemptible': isPreemptible,
      'machineTypeUri': machineTypeUri,
      'managedGroupConfig': pulumi.Input.mapInputValue<ManagedGroupConfigResponseDataprocV1beta2, Map<String, dynamic>>(managedGroupConfig, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'numInstances': numInstances,
      'preemptibility': preemptibility,
    };
  }

  factory InstanceGroupConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfigResponseDataprocV1beta2(
      accelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigResponseDataprocV1beta2>(map['accelerators']!, (value) => AcceleratorConfigResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
      diskConfig: pulumi.Input.fromValue(DiskConfigResponseDataprocV1beta2.fromMap((map['diskConfig']! as Map).cast<String, dynamic>())),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      instanceNames: pulumi.Input.fromValue((map['instanceNames'] as List).cast<String>()),
      instanceReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceReferenceResponseDataprocV1beta2>(map['instanceReferences']!, (value) => InstanceReferenceResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
      isPreemptible: pulumi.Input.fromValue(map['isPreemptible'] as bool),
      machineTypeUri: pulumi.Input.fromValue(map['machineTypeUri'] as String),
      managedGroupConfig: pulumi.Input.fromValue(ManagedGroupConfigResponseDataprocV1beta2.fromMap((map['managedGroupConfig']! as Map).cast<String, dynamic>())),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      numInstances: pulumi.Input.fromValue(map['numInstances'] as int),
      preemptibility: pulumi.Input.fromValue(map['preemptibility'] as String),
    );
  }
}

