// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_effective_replication_replica.dart';

class InstanceEffectiveReplication {
  /// The replication role.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceEffectiveReplicationReplica>?>? replicas;
  /// (Output)
  /// The replication role.
  final pulumi.Input<String?>? role;

  /// Creates a new [InstanceEffectiveReplication].
  /// [replicas] The replication role.
  /// [role] (Output)
  const InstanceEffectiveReplication({
    this.replicas,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<InstanceEffectiveReplicationReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<InstanceEffectiveReplicationReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory InstanceEffectiveReplication.fromMap(Map<String, dynamic> map) {
    return InstanceEffectiveReplication(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEffectiveReplicationReplica>(guardedValue, (value) => InstanceEffectiveReplicationReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
