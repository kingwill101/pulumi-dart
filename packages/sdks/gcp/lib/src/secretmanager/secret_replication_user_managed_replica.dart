// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replication_user_managed_replica_customer_managed_encryption.dart';

class SecretReplicationUserManagedReplica {
  /// Customer Managed Encryption for the secret.
  /// Structure is documented below.
  final pulumi.Input<SecretReplicationUserManagedReplicaCustomerManagedEncryption>? customerManagedEncryption;
  /// The canonical IDs of the location to replicate data. For example: "us-east1".
  final pulumi.Input<String> location;

  /// Creates a new [SecretReplicationUserManagedReplica].
  /// [customerManagedEncryption] Customer Managed Encryption for the secret.
  /// [location] The canonical IDs of the location to replicate data. For example: "us-east1".
  SecretReplicationUserManagedReplica({
    this.customerManagedEncryption,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption': ?pulumi.Input.mapOptionalInputValue<SecretReplicationUserManagedReplicaCustomerManagedEncryption, Map<String, dynamic>>(customerManagedEncryption, (value) => value.toMap()),
      'location': location,
    };
  }

  factory SecretReplicationUserManagedReplica.fromMap(Map<String, dynamic> map) {
    return SecretReplicationUserManagedReplica(
      customerManagedEncryption: map['customerManagedEncryption'] == null ? null : (SecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap((map['customerManagedEncryption']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
    );
  }
}

