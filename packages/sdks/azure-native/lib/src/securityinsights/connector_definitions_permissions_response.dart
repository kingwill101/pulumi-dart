// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_definitions_resource_provider_response.dart';
import 'custom_permission_details_response.dart';

/// The required Permissions for the connector.
class ConnectorDefinitionsPermissionsResponse {
  /// Gets or sets the customs permissions required for the user to create connections.
  final List<CustomPermissionDetailsResponse>? customs;
  /// Gets or sets the required licenses for the user to create connections.
  final List<String>? licenses;
  /// Gets or sets the resource provider permissions required for the user to create connections.
  final List<ConnectorDefinitionsResourceProviderResponse>? resourceProvider;
  /// Gets or sets the required tenant permissions for the connector.
  final List<String>? tenant;

  /// Creates a new [ConnectorDefinitionsPermissionsResponse].
  /// [customs] Gets or sets the customs permissions required for the user to create connections.
  /// [licenses] Gets or sets the required licenses for the user to create connections.
  /// [resourceProvider] Gets or sets the resource provider permissions required for the user to create connections.
  /// [tenant] Gets or sets the required tenant permissions for the connector.
  ConnectorDefinitionsPermissionsResponse({
    this.customs,
    this.licenses,
    this.resourceProvider,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': ?customs == null ? null : pulumi.Input.encodeList<CustomPermissionDetailsResponse, Map<String, dynamic>>(customs!, (value) => value.toMap()),
      'licenses': ?licenses,
      'resourceProvider': ?resourceProvider == null ? null : pulumi.Input.encodeList<ConnectorDefinitionsResourceProviderResponse, Map<String, dynamic>>(resourceProvider!, (value) => value.toMap()),
      'tenant': ?tenant,
    };
  }

  factory ConnectorDefinitionsPermissionsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsPermissionsResponse(
      customs: map['customs'] == null ? null : pulumi.Input.decodeList<CustomPermissionDetailsResponse>(map['customs'], (value) => CustomPermissionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      licenses: map['licenses'] == null ? null : (map['licenses'] as List).cast<String>(),
      resourceProvider: map['resourceProvider'] == null ? null : pulumi.Input.decodeList<ConnectorDefinitionsResourceProviderResponse>(map['resourceProvider'], (value) => ConnectorDefinitionsResourceProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
      tenant: map['tenant'] == null ? null : (map['tenant'] as List).cast<String>(),
    );
  }
}

