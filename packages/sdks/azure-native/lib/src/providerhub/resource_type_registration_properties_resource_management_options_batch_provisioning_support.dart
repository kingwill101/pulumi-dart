// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport {
  /// Supported operations.
  final pulumi.Input<dynamic>? supportedOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport].
  /// [supportedOperations] Supported operations.
  const ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport({
    this.supportedOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedOperations': ?supportedOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport(
      supportedOperations: (() { final guardedValue = map['supportedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
