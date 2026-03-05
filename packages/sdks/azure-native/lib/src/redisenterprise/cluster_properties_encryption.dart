// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_customer_managed_key_encryption.dart';

/// Encryption-at-rest configuration for the cluster.
class ClusterPropertiesEncryption {
  /// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  final pulumi.Input<ClusterPropertiesCustomerManagedKeyEncryption>? customerManagedKeyEncryption;

  /// Creates a new [ClusterPropertiesEncryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  ClusterPropertiesEncryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterPropertiesCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory ClusterPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesEncryption(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPropertiesCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

