// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_effective_replication_replica.dart';

class GetInstanceEffectiveReplication {
  /// The replication role.
  final List<GetInstanceEffectiveReplicationReplica> replicas;
  /// The replication role.
  final String role;

  /// Creates a new [GetInstanceEffectiveReplication].
  /// [replicas] The replication role.
  /// [role] The replication role.
  GetInstanceEffectiveReplication({
    required this.replicas,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': pulumi.Input.encodeList<GetInstanceEffectiveReplicationReplica, Map<String, dynamic>>(replicas, (value) => value.toMap()),
      'role': role,
    };
  }

  factory GetInstanceEffectiveReplication.fromMap(Map<String, dynamic> map) {
    return GetInstanceEffectiveReplication(
      replicas: pulumi.Input.decodeList<GetInstanceEffectiveReplicationReplica>(map['replicas'], (value) => GetInstanceEffectiveReplicationReplica.fromMap((value as Map).cast<String, dynamic>())),
      role: map['role'] as String,
    );
  }
}

