// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_machine_spec.dart';

/// A description of resources that are used for performing batch operations, are dedicated to a Model, and need manual configuration.
class GoogleCloudAiplatformV1BatchDedicatedResources {
  /// Immutable. The specification of a single machine.
  final pulumi.Input<GoogleCloudAiplatformV1MachineSpec> machineSpec;
  /// Immutable. The maximum number of machine replicas the batch operation may be scaled to. The default value is 10.
  final pulumi.Input<int>? maxReplicaCount;
  /// Immutable. The number of machine replicas used at the start of the batch operation. If not set, Vertex AI decides starting number, not greater than max_replica_count
  final pulumi.Input<int>? startingReplicaCount;

  /// Creates a new [GoogleCloudAiplatformV1BatchDedicatedResources].
  /// [machineSpec] Immutable. The specification of a single machine.
  /// [maxReplicaCount] Immutable. The maximum number of machine replicas the batch operation may be scaled to. The default value is 10.
  /// [startingReplicaCount] Immutable. The number of machine replicas used at the start of the batch operation. If not set, Vertex AI decides starting number, not greater than max_replica_count
  GoogleCloudAiplatformV1BatchDedicatedResources({
    required this.machineSpec,
    this.maxReplicaCount,
    this.startingReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1MachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'maxReplicaCount': ?maxReplicaCount,
      'startingReplicaCount': ?startingReplicaCount,
    };
  }

  factory GoogleCloudAiplatformV1BatchDedicatedResources.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1BatchDedicatedResources(
      machineSpec: (GoogleCloudAiplatformV1MachineSpec.fromMap((map['machineSpec'] as Map).cast<String, dynamic>())).input(),
      maxReplicaCount: map['maxReplicaCount'] == null ? null : (map['maxReplicaCount'] as int).input(),
      startingReplicaCount: map['startingReplicaCount'] == null ? null : (map['startingReplicaCount'] as int).input(),
    );
  }
}

