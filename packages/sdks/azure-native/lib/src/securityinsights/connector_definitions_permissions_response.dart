// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_definitions_resource_provider_response.dart';
import 'custom_permission_details_response.dart';

/// The required Permissions for the connector.
class ConnectorDefinitionsPermissionsResponse {
  /// Gets or sets the customs permissions required for the user to create connections.
  final pulumi.Input<List<CustomPermissionDetailsResponse>?>? customs;
  /// Gets or sets the required licenses for the user to create connections.
  final pulumi.Input<List<String>?>? licenses;
  /// Gets or sets the resource provider permissions required for the user to create connections.
  final pulumi.Input<List<ConnectorDefinitionsResourceProviderResponse>?>? resourceProvider;
  /// Gets or sets the required tenant permissions for the connector.
  final pulumi.Input<List<String>?>? tenant;

  /// Creates a new [ConnectorDefinitionsPermissionsResponse].
  /// [customs] Gets or sets the customs permissions required for the user to create connections.
  /// [licenses] Gets or sets the required licenses for the user to create connections.
  /// [resourceProvider] Gets or sets the resource provider permissions required for the user to create connections.
  /// [tenant] Gets or sets the required tenant permissions for the connector.
  const ConnectorDefinitionsPermissionsResponse({
    this.customs,
    this.licenses,
    this.resourceProvider,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': ?pulumi.Input.mapOptionalInputValue<List<CustomPermissionDetailsResponse>, List<Map<String, dynamic>>>(customs, (value) => pulumi.Input.encodeList<CustomPermissionDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenses': ?licenses,
      'resourceProvider': ?pulumi.Input.mapOptionalInputValue<List<ConnectorDefinitionsResourceProviderResponse>, List<Map<String, dynamic>>>(resourceProvider, (value) => pulumi.Input.encodeList<ConnectorDefinitionsResourceProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tenant': ?tenant,
    };
  }

  factory ConnectorDefinitionsPermissionsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsPermissionsResponse(
      customs: (() { final guardedValue = map['customs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomPermissionDetailsResponse>(guardedValue, (value) => CustomPermissionDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceProvider: (() { final guardedValue = map['resourceProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorDefinitionsResourceProviderResponse>(guardedValue, (value) => ConnectorDefinitionsResourceProviderResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
