// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_machine_spec_response.dart';

/// A description of resources that are used for performing batch operations, are dedicated to a Model, and need manual configuration.
class GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse {
  /// Immutable. The specification of a single machine.
  final GoogleCloudAiplatformV1beta1MachineSpecResponse machineSpec;
  /// Immutable. The maximum number of machine replicas the batch operation may be scaled to. The default value is 10.
  final int maxReplicaCount;
  /// Immutable. The number of machine replicas used at the start of the batch operation. If not set, Vertex AI decides starting number, not greater than max_replica_count
  final int startingReplicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse].
  /// [machineSpec] Immutable. The specification of a single machine.
  /// [maxReplicaCount] Immutable. The maximum number of machine replicas the batch operation may be scaled to. The default value is 10.
  /// [startingReplicaCount] Immutable. The number of machine replicas used at the start of the batch operation. If not set, Vertex AI decides starting number, not greater than max_replica_count
  GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse({
    required this.machineSpec,
    required this.maxReplicaCount,
    required this.startingReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': machineSpec.toMap(),
      'maxReplicaCount': maxReplicaCount,
      'startingReplicaCount': startingReplicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse(
      machineSpec: GoogleCloudAiplatformV1beta1MachineSpecResponse.fromMap((map['machineSpec'] as Map).cast<String, dynamic>()),
      maxReplicaCount: map['maxReplicaCount'] as int,
      startingReplicaCount: map['startingReplicaCount'] as int,
    );
  }
}

