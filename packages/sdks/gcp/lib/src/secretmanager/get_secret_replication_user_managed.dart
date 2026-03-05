// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication_user_managed_replica.dart';

class GetSecretReplicationUserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  final pulumi.Input<List<GetSecretReplicationUserManagedReplica>> replicas;

  /// Creates a new [GetSecretReplicationUserManaged].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  GetSecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': pulumi.Input.mapInputValue<List<GetSecretReplicationUserManagedReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<GetSecretReplicationUserManagedReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretReplicationUserManaged.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationUserManaged(
      replicas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretReplicationUserManagedReplica>(map['replicas']!, (value) => GetSecretReplicationUserManagedReplica.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

