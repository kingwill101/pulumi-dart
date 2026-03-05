// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication_auto_customer_managed_encryption.dart';

class GetSecretsSecretReplicationAuto {
  /// Customer Managed Encryption for the secret.
  /// Structure is documented below.
  final pulumi.Input<List<GetSecretsSecretReplicationAutoCustomerManagedEncryption>> customerManagedEncryptions;

  /// Creates a new [GetSecretsSecretReplicationAuto].
  /// [customerManagedEncryptions] Customer Managed Encryption for the secret.
  GetSecretsSecretReplicationAuto({
    required this.customerManagedEncryptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptions': pulumi.Input.mapInputValue<List<GetSecretsSecretReplicationAutoCustomerManagedEncryption>, List<Map<String, dynamic>>>(customerManagedEncryptions, (value) => pulumi.Input.encodeList<GetSecretsSecretReplicationAutoCustomerManagedEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretsSecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplicationAuto(
      customerManagedEncryptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretsSecretReplicationAutoCustomerManagedEncryption>(map['customerManagedEncryptions']!, (value) => GetSecretsSecretReplicationAutoCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

