// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_encryption.dart';

/// The encryption configuration for the online experimentation workspace resource.
class ResourceEncryptionConfiguration {
  /// All Customer-managed key encryption properties for the resource.
  final pulumi.Input<CustomerManagedKeyEncryption>? customerManagedKeyEncryption;

  /// Creates a new [ResourceEncryptionConfiguration].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource.
  ResourceEncryptionConfiguration({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<CustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory ResourceEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceEncryptionConfiguration(
      customerManagedKeyEncryption: map['customerManagedKeyEncryption'] == null ? null : (CustomerManagedKeyEncryption.fromMap((map['customerManagedKeyEncryption']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

