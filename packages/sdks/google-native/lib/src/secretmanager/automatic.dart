// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_encryption.dart';

/// A replication policy that replicates the Secret payload without any restrictions.
class Automatic {
  /// Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  final pulumi.Input<CustomerManagedEncryption>? customerManagedEncryption;

  /// Creates a new [Automatic].
  /// [customerManagedEncryption] Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  Automatic({this.customerManagedEncryption});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerManagedEncryption,
            Map<String, dynamic>
          >(customerManagedEncryption, (value) => value.toMap()),
    };
  }

  factory Automatic.fromMap(Map<String, dynamic> map) {
    return Automatic(
      customerManagedEncryption: (() {
        final guardedValue = map['customerManagedEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomerManagedEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
