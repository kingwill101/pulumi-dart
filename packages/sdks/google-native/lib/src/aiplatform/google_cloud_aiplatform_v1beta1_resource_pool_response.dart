// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_disk_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool_autoscaling_spec_response.dart';

/// Represents the spec of a group of resources of the same type, for example machine type, disk, and accelerators, in a PersistentResource.
class GoogleCloudAiplatformV1beta1ResourcePoolResponse {
  /// Optional. Optional spec to configure GKE autoscaling
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse
  >
  autoscalingSpec;

  /// Optional. Disk spec for the machine in this node pool.
  final pulumi.Input<GoogleCloudAiplatformV1beta1DiskSpecResponse> diskSpec;

  /// Immutable. The specification of a single machine.
  final pulumi.Input<GoogleCloudAiplatformV1beta1MachineSpecResponse>
  machineSpec;

  /// Optional. The total number of machines to use for this resource pool.
  final pulumi.Input<String> replicaCount;

  /// The number of machines currently in use by training jobs for this resource pool. Will replace idle_replica_count.
  final pulumi.Input<String> usedReplicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourcePoolResponse].
  /// [autoscalingSpec] Optional. Optional spec to configure GKE autoscaling
  /// [diskSpec] Optional. Disk spec for the machine in this node pool.
  /// [machineSpec] Immutable. The specification of a single machine.
  /// [replicaCount] Optional. The total number of machines to use for this resource pool.
  /// [usedReplicaCount] The number of machines currently in use by training jobs for this resource pool. Will replace idle_replica_count.
  GoogleCloudAiplatformV1beta1ResourcePoolResponse({
    required this.autoscalingSpec,
    required this.diskSpec,
    required this.machineSpec,
    required this.replicaCount,
    required this.usedReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse,
            Map<String, dynamic>
          >(autoscalingSpec, (value) => value.toMap()),
      'diskSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1DiskSpecResponse,
            Map<String, dynamic>
          >(diskSpec, (value) => value.toMap()),
      'machineSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1MachineSpecResponse,
            Map<String, dynamic>
          >(machineSpec, (value) => value.toMap()),
      'replicaCount': replicaCount,
      'usedReplicaCount': usedReplicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourcePoolResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ResourcePoolResponse(
      autoscalingSpec: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse.fromMap(
          (map['autoscalingSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      diskSpec: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1DiskSpecResponse.fromMap(
          (map['diskSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      machineSpec: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1MachineSpecResponse.fromMap(
          (map['machineSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      replicaCount: pulumi.Input.fromValue(map['replicaCount'] as String),
      usedReplicaCount: pulumi.Input.fromValue(
        map['usedReplicaCount'] as String,
      ),
    );
  }
}
