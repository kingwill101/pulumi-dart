// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delete_dependency_response.dart';
import 'resource_type_registration_properties_resource_management_options_batch_provisioning_support_response.dart';
import 'resource_type_registration_properties_resource_management_options_nested_provisioning_support_response.dart';

/// Resource management options.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse {
  /// Batch provisioning support.
  final pulumi.Input<
    ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse
  >?
  batchProvisioningSupport;

  /// Delete dependencies.
  final pulumi.Input<List<DeleteDependencyResponse>>? deleteDependencies;

  /// Nested provisioning support.
  final pulumi.Input<
    ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse
  >?
  nestedProvisioningSupport;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse].
  /// [batchProvisioningSupport] Batch provisioning support.
  /// [deleteDependencies] Delete dependencies.
  /// [nestedProvisioningSupport] Nested provisioning support.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse({
    this.batchProvisioningSupport,
    this.deleteDependencies,
    this.nestedProvisioningSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchProvisioningSupport':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse,
            Map<String, dynamic>
          >(batchProvisioningSupport, (value) => value.toMap()),
      'deleteDependencies':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeleteDependencyResponse>,
            List<Map<String, dynamic>>
          >(
            deleteDependencies,
            (value) =>
                pulumi.Input.encodeList<
                  DeleteDependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nestedProvisioningSupport':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse,
            Map<String, dynamic>
          >(nestedProvisioningSupport, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse(
      batchProvisioningSupport: (() {
        final guardedValue = map['batchProvisioningSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteDependencies: (() {
        final guardedValue = map['deleteDependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeleteDependencyResponse>(
            guardedValue,
            (value) => DeleteDependencyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nestedProvisioningSupport: (() {
        final guardedValue = map['nestedProvisioningSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupportResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
