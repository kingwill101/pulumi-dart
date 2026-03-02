// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Nested provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse {
  /// Minimum API version.
  final pulumi.Input<String>? minimumApiVersion;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse].
  /// [minimumApiVersion] Minimum API version.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse({
    this.minimumApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumApiVersion': ?minimumApiVersion,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse(
      minimumApiVersion: map['minimumApiVersion'] == null ? null : (map['minimumApiVersion']! as String).input(),
    );
  }
}

