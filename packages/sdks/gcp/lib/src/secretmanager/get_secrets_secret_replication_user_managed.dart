// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication_user_managed_replica.dart';

class GetSecretsSecretReplicationUserManaged {
  /// The list of Replicas for this Secret.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplicationUserManagedReplica>> replicas;

  /// Creates a new [GetSecretsSecretReplicationUserManaged].
  /// [replicas] The list of Replicas for this Secret.
  const GetSecretsSecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': pulumi.Input.mapInputValue<List<GetSecretsSecretReplicationUserManagedReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<GetSecretsSecretReplicationUserManagedReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretsSecretReplicationUserManaged.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplicationUserManaged(
      replicas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretsSecretReplicationUserManagedReplica>(map['replicas']!, (value) => GetSecretsSecretReplicationUserManagedReplica.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

