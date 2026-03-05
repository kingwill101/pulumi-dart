// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delete_dependency.dart';
import 'resource_type_registration_properties_resource_management_options_batch_provisioning_support.dart';
import 'resource_type_registration_properties_resource_management_options_nested_provisioning_support.dart';

/// Resource management options.
class ResourceTypeRegistrationPropertiesResourceManagementOptions {
  /// Batch provisioning support.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport>? batchProvisioningSupport;
  /// Delete dependencies.
  final pulumi.Input<List<DeleteDependency>>? deleteDependencies;
  /// Nested provisioning support.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport>? nestedProvisioningSupport;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptions].
  /// [batchProvisioningSupport] Batch provisioning support.
  /// [deleteDependencies] Delete dependencies.
  /// [nestedProvisioningSupport] Nested provisioning support.
  ResourceTypeRegistrationPropertiesResourceManagementOptions({
    this.batchProvisioningSupport,
    this.deleteDependencies,
    this.nestedProvisioningSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchProvisioningSupport': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport, Map<String, dynamic>>(batchProvisioningSupport, (value) => value.toMap()),
      'deleteDependencies': ?pulumi.Input.mapOptionalInputValue<List<DeleteDependency>, List<Map<String, dynamic>>>(deleteDependencies, (value) => pulumi.Input.encodeList<DeleteDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nestedProvisioningSupport': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport, Map<String, dynamic>>(nestedProvisioningSupport, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptions(
      batchProvisioningSupport: (() { final guardedValue = map['batchProvisioningSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteDependencies: (() { final guardedValue = map['deleteDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeleteDependency>(guardedValue, (value) => DeleteDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nestedProvisioningSupport: (() { final guardedValue = map['nestedProvisioningSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

