// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_response_secretmanager_v1beta1.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManagedResponseSecretmanagerV1beta1 {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<ReplicaResponseSecretmanagerV1beta1> replicas;

  /// Creates a new [UserManagedResponseSecretmanagerV1beta1].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  UserManagedResponseSecretmanagerV1beta1({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': pulumi.Input.encodeList<ReplicaResponseSecretmanagerV1beta1, Map<String, dynamic>>(replicas, (value) => value.toMap()),
    };
  }

  factory UserManagedResponseSecretmanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return UserManagedResponseSecretmanagerV1beta1(
      replicas: pulumi.Input.decodeList<ReplicaResponseSecretmanagerV1beta1>(map['replicas'], (value) => ReplicaResponseSecretmanagerV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

