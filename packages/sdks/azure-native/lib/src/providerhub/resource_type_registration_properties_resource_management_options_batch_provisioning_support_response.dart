// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse {
  /// Supported operations.
  final pulumi.Input<String>? supportedOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse].
  /// [supportedOperations] Supported operations.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse({
    this.supportedOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'supportedOperations': ?supportedOperations};
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse(
      supportedOperations: (() {
        final guardedValue = map['supportedOperations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
