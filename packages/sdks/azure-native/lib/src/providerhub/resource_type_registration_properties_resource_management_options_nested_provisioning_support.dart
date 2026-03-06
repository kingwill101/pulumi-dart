// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Nested provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport {
  /// Minimum API version.
  final pulumi.Input<String>? minimumApiVersion;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport].
  /// [minimumApiVersion] Minimum API version.
  const ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport({
    this.minimumApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumApiVersion': ?minimumApiVersion,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport(
      minimumApiVersion: (() { final guardedValue = map['minimumApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

