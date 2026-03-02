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
      batchProvisioningSupport: map['batchProvisioningSupport'] == null ? null : (ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupport.fromMap((map['batchProvisioningSupport']! as Map).cast<String, dynamic>())).input(),
      deleteDependencies: map['deleteDependencies'] == null ? null : (pulumi.Input.decodeList<DeleteDependency>(map['deleteDependencies']!, (value) => DeleteDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nestedProvisioningSupport: map['nestedProvisioningSupport'] == null ? null : (ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport.fromMap((map['nestedProvisioningSupport']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

