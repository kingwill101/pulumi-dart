// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_initial_replication_replica.dart';

class InstanceInitialReplication {
  /// The replication role.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceInitialReplicationReplica>>? replicas;
  /// The replication role.
  /// Default value is `STANDBY`.
  /// Possible values are: `ROLE_UNSPECIFIED`, `ACTIVE`, `STANDBY`.
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceInitialReplication].
  /// [replicas] The replication role.
  /// [role] The replication role.
  InstanceInitialReplication({
    this.replicas,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<InstanceInitialReplicationReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<InstanceInitialReplicationReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory InstanceInitialReplication.fromMap(Map<String, dynamic> map) {
    return InstanceInitialReplication(
      replicas: map['replicas'] == null ? null : (pulumi.Input.decodeList<InstanceInitialReplicationReplica>(map['replicas']!, (value) => InstanceInitialReplicationReplica.fromMap((value as Map).cast<String, dynamic>()))).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

