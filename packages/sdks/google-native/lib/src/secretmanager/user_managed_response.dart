// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_response.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManagedResponse {
  /// The list of Replicas for this Secret. Cannot be empty.
  final pulumi.Input<List<ReplicaResponse>> replicas;

  /// Creates a new [UserManagedResponse].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  const UserManagedResponse({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': pulumi.Input.mapInputValue<List<ReplicaResponse>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<ReplicaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserManagedResponse.fromMap(Map<String, dynamic> map) {
    return UserManagedResponse(
      replicas: pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicaResponse>(map['replicas']!, (value) => ReplicaResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

