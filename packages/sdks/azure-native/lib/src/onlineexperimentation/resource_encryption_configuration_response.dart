// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption_response.dart';

/// The encryption configuration for the online experimentation workspace resource.
class ResourceEncryptionConfigurationResponse {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryptionResponse>? customerManagedKeyEncryption;

  /// Creates a new [ResourceEncryptionConfigurationResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  const ResourceEncryptionConfigurationResponse({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyEncryptionResponse, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory ResourceEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceEncryptionConfigurationResponse(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerManagedKeyEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

