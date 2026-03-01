// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption.dart';

/// The encryption configuration for the online experimentation workspace resource.
class ResourceEncryptionConfiguration {
  /// All Customer-managed key encryption properties for the resource.
  final CustomerManagedKeyEncryption? customerManagedKeyEncryption;

  /// Creates a new [ResourceEncryptionConfiguration].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  ResourceEncryptionConfiguration({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?customerManagedKeyEncryption == null ? null : customerManagedKeyEncryption!.toMap(),
    };
  }

  factory ResourceEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceEncryptionConfiguration(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : CustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

