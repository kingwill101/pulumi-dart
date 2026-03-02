// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication_user_managed_replica_customer_managed_encryption.dart';

class GetSecretReplicationUserManagedReplica {
  /// Customer Managed Encryption for the secret.
  final pulumi.Input<List<GetSecretReplicationUserManagedReplicaCustomerManagedEncryption>> customerManagedEncryptions;
  /// The canonical IDs of the location to replicate data. For example: "us-east1".
  final pulumi.Input<String> location;

  /// Creates a new [GetSecretReplicationUserManagedReplica].
  /// [customerManagedEncryptions] Customer Managed Encryption for the secret.
  /// [location] The canonical IDs of the location to replicate data. For example: "us-east1".
  GetSecretReplicationUserManagedReplica({
    required this.customerManagedEncryptions,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptions': pulumi.Input.mapInputValue<List<GetSecretReplicationUserManagedReplicaCustomerManagedEncryption>, List<Map<String, dynamic>>>(customerManagedEncryptions, (value) => pulumi.Input.encodeList<GetSecretReplicationUserManagedReplicaCustomerManagedEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
    };
  }

  factory GetSecretReplicationUserManagedReplica.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationUserManagedReplica(
      customerManagedEncryptions: (pulumi.Input.decodeList<GetSecretReplicationUserManagedReplicaCustomerManagedEncryption>(map['customerManagedEncryptions'], (value) => GetSecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: (map['location'] as String).input(),
    );
  }
}

