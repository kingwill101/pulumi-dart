// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption_response.dart';

/// The encryption configuration for the online experimentation workspace resource.
class ResourceEncryptionConfigurationResponse {
  /// All Customer-managed key encryption properties for the resource.
  final CustomerManagedKeyEncryptionResponse? customerManagedKeyEncryption;

  /// Creates a new [ResourceEncryptionConfigurationResponse].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  ResourceEncryptionConfigurationResponse({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory ResourceEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceEncryptionConfigurationResponse(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : CustomerManagedKeyEncryptionResponse.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

