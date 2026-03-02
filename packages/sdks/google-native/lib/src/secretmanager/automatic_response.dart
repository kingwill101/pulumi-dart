// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_encryption_response.dart';

/// A replication policy that replicates the Secret payload without any restrictions.
class AutomaticResponse {
  /// Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  final pulumi.Input<CustomerManagedEncryptionResponse> customerManagedEncryption;

  /// Creates a new [AutomaticResponse].
  /// [customerManagedEncryption] Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  AutomaticResponse({
    required this.customerManagedEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption': pulumi.Input.mapInputValue<CustomerManagedEncryptionResponse, Map<String, dynamic>>(customerManagedEncryption, (value) => value.toMap()),
    };
  }

  factory AutomaticResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticResponse(
      customerManagedEncryption: (CustomerManagedEncryptionResponse.fromMap((map['customerManagedEncryption'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

