// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication_user_managed_replica_customer_managed_encryption.dart';

class GetSecretsSecretReplicationUserManagedReplica {
  /// Customer Managed Encryption for the secret.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption>> customerManagedEncryptions;
  /// The canonical IDs of the location to replicate data.
  final pulumi.Input<String> location;

  /// Creates a new [GetSecretsSecretReplicationUserManagedReplica].
  /// [customerManagedEncryptions] Customer Managed Encryption for the secret.
  /// [location] The canonical IDs of the location to replicate data.
  GetSecretsSecretReplicationUserManagedReplica({
    required this.customerManagedEncryptions,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptions': pulumi.Input.mapInputValue<List<GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption>, List<Map<String, dynamic>>>(customerManagedEncryptions, (value) => pulumi.Input.encodeList<GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
    };
  }

  factory GetSecretsSecretReplicationUserManagedReplica.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplicationUserManagedReplica(
      customerManagedEncryptions: (pulumi.Input.decodeList<GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption>(map['customerManagedEncryptions'], (value) => GetSecretsSecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: (map['location'] as String).input(),
    );
  }
}

