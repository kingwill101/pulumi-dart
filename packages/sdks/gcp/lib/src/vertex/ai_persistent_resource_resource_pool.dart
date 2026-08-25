// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_persistent_resource_resource_pool_autoscaling_spec.dart';
import 'ai_persistent_resource_resource_pool_disk_spec.dart';
import 'ai_persistent_resource_resource_pool_machine_spec.dart';

class AiPersistentResourceResourcePool {
  /// The min/max number of replicas allowed if enabling autoscaling
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourcePoolAutoscalingSpec?>? autoscalingSpec;
  /// Represents the spec of disk options.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourcePoolDiskSpec?>? diskSpec;
  /// The unique ID in a PersistentResource for referring to this resource pool.
  /// User can specify it if necessary. Otherwise, it's generated
  /// automatically.
  final pulumi.Input<String?>? id;
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourcePoolMachineSpec> machineSpec;
  /// The total number of machines to use for this resource pool.
  final pulumi.Input<String?>? replicaCount;
  /// (Output)
  /// The number of machines currently in use by training jobs for this resource
  /// pool. Will replace idle_replica_count.
  final pulumi.Input<String?>? usedReplicaCount;

  /// Creates a new [AiPersistentResourceResourcePool].
  /// [autoscalingSpec] The min/max number of replicas allowed if enabling autoscaling
  /// [diskSpec] Represents the spec of disk options.
  /// [id] The unique ID in a PersistentResource for referring to this resource pool.
  /// [machineSpec] Specification of a single machine.
  /// [replicaCount] The total number of machines to use for this resource pool.
  /// [usedReplicaCount] (Output)
  const AiPersistentResourceResourcePool({
    this.autoscalingSpec,
    this.diskSpec,
    this.id,
    required this.machineSpec,
    this.replicaCount,
    this.usedReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceResourcePoolAutoscalingSpec, Map<String, dynamic>>(autoscalingSpec, (value) => value.toMap()),
      'diskSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceResourcePoolDiskSpec, Map<String, dynamic>>(diskSpec, (value) => value.toMap()),
      'id': ?id,
      'machineSpec': pulumi.Input.mapInputValue<AiPersistentResourceResourcePoolMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'replicaCount': ?replicaCount,
      'usedReplicaCount': ?usedReplicaCount,
    };
  }

  factory AiPersistentResourceResourcePool.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourcePool(
      autoscalingSpec: (() { final guardedValue = map['autoscalingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceResourcePoolAutoscalingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSpec: (() { final guardedValue = map['diskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceResourcePoolDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineSpec: pulumi.Input.fromValue(AiPersistentResourceResourcePoolMachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usedReplicaCount: (() { final guardedValue = map['usedReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
