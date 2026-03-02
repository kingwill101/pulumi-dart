// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_disk_spec.dart';
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_autoscaling_spec.dart';

/// Represents the spec of a group of resources of the same type, for example machine type, disk, and accelerators, in a PersistentResource.
class GoogleCloudAiplatformV1beta1ResourcePool {
  /// Optional. Optional spec to configure GKE autoscaling
  final pulumi.Input<GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec>? autoscalingSpec;
  /// Optional. Disk spec for the machine in this node pool.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DiskSpec>? diskSpec;
  /// Immutable. The unique ID in a PersistentResource for referring to this resource pool. User can specify it if necessary. Otherwise, it's generated automatically.
  final pulumi.Input<String>? id;
  /// Immutable. The specification of a single machine.
  final pulumi.Input<GoogleCloudAiplatformV1beta1MachineSpec> machineSpec;
  /// Optional. The total number of machines to use for this resource pool.
  final pulumi.Input<String>? replicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourcePool].
  /// [autoscalingSpec] Optional. Optional spec to configure GKE autoscaling
  /// [diskSpec] Optional. Disk spec for the machine in this node pool.
  /// [id] Immutable. The unique ID in a PersistentResource for referring to this resource pool. User can specify it if necessary. Otherwise, it's generated automatically.
  /// [machineSpec] Immutable. The specification of a single machine.
  /// [replicaCount] Optional. The total number of machines to use for this resource pool.
  GoogleCloudAiplatformV1beta1ResourcePool({
    this.autoscalingSpec,
    this.diskSpec,
    this.id,
    required this.machineSpec,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec, Map<String, dynamic>>(autoscalingSpec, (value) => value.toMap()),
      'diskSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1DiskSpec, Map<String, dynamic>>(diskSpec, (value) => value.toMap()),
      'id': ?id,
      'machineSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1MachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourcePool.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourcePool(
      autoscalingSpec: map['autoscalingSpec'] == null ? null : (GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec.fromMap((map['autoscalingSpec']! as Map).cast<String, dynamic>())).input(),
      diskSpec: map['diskSpec'] == null ? null : (GoogleCloudAiplatformV1beta1DiskSpec.fromMap((map['diskSpec']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      machineSpec: (GoogleCloudAiplatformV1beta1MachineSpec.fromMap((map['machineSpec'] as Map).cast<String, dynamic>())).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount']! as String).input(),
    );
  }
}

