// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication_auto_customer_managed_encryption.dart';

class GetSecretReplicationAuto {
  /// The customer-managed encryption configuration of the Secret.
  /// If no configuration is provided, Google-managed default
  /// encryption is used.
  final pulumi.Input<List<GetSecretReplicationAutoCustomerManagedEncryption>> customerManagedEncryptions;

  /// Creates a new [GetSecretReplicationAuto].
  /// [customerManagedEncryptions] The customer-managed encryption configuration of the Secret.
  const GetSecretReplicationAuto({
    required this.customerManagedEncryptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptions': pulumi.Input.mapInputValue<List<GetSecretReplicationAutoCustomerManagedEncryption>, List<Map<String, dynamic>>>(customerManagedEncryptions, (value) => pulumi.Input.encodeList<GetSecretReplicationAutoCustomerManagedEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationAuto(
      customerManagedEncryptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretReplicationAutoCustomerManagedEncryption>(map['customerManagedEncryptions']!, (value) => GetSecretReplicationAutoCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
