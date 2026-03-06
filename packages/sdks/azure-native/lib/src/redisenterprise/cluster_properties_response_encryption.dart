// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_response_customer_managed_key_encryption.dart';

/// Encryption-at-rest configuration for the cluster.
class ClusterPropertiesResponseEncryption {
  /// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  final pulumi.Input<ClusterPropertiesResponseCustomerManagedKeyEncryption>? customerManagedKeyEncryption;

  /// Creates a new [ClusterPropertiesResponseEncryption].
  /// [customerManagedKeyEncryption] All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
  const ClusterPropertiesResponseEncryption({
    this.customerManagedKeyEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterPropertiesResponseCustomerManagedKeyEncryption, Map<String, dynamic>>(customerManagedKeyEncryption, (value) => value.toMap()),
    };
  }

  factory ClusterPropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesResponseEncryption(
      customerManagedKeyEncryption: (() { final guardedValue = map['customerManagedKeyEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPropertiesResponseCustomerManagedKeyEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

