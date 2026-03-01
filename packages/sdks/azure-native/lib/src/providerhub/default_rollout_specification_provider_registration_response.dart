// ignore_for_file: unused_element, unnecessary_cast

import 'provider_registration_properties_response.dart';
import 'system_data_response.dart';

/// The provider registration.
class DefaultRolloutSpecificationProviderRegistrationResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  /// The name of the resource
  final String name;
  final ProviderRegistrationPropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [DefaultRolloutSpecificationProviderRegistrationResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [name] The name of the resource
  /// [properties] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  DefaultRolloutSpecificationProviderRegistrationResponse({
    required this.id,
    this.kind,
    required this.name,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory DefaultRolloutSpecificationProviderRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationProviderRegistrationResponse(
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : ProviderRegistrationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

