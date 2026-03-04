// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replication_auto_customer_managed_encryption.dart';

class SecretReplicationAuto {
  /// The customer-managed encryption configuration of the Secret.
  /// If no configuration is provided, Google-managed default
  /// encryption is used.
  /// Structure is documented below.
  final pulumi.Input<SecretReplicationAutoCustomerManagedEncryption>?
  customerManagedEncryption;

  /// Creates a new [SecretReplicationAuto].
  /// [customerManagedEncryption] The customer-managed encryption configuration of the Secret.
  SecretReplicationAuto({this.customerManagedEncryption});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            SecretReplicationAutoCustomerManagedEncryption,
            Map<String, dynamic>
          >(customerManagedEncryption, (value) => value.toMap()),
    };
  }

  factory SecretReplicationAuto.fromMap(Map<String, dynamic> map) {
    return SecretReplicationAuto(
      customerManagedEncryption: (() {
        final guardedValue = map['customerManagedEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretReplicationAutoCustomerManagedEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
