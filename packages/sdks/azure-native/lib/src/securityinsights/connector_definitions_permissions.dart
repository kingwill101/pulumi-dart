// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_definitions_resource_provider.dart';
import 'custom_permission_details.dart';

/// The required Permissions for the connector.
class ConnectorDefinitionsPermissions {
  /// Gets or sets the customs permissions required for the user to create connections.
  final List<CustomPermissionDetails>? customs;
  /// Gets or sets the required licenses for the user to create connections.
  final List<String>? licenses;
  /// Gets or sets the resource provider permissions required for the user to create connections.
  final List<ConnectorDefinitionsResourceProvider>? resourceProvider;
  /// Gets or sets the required tenant permissions for the connector.
  final List<String>? tenant;

  /// Creates a new [ConnectorDefinitionsPermissions].
  /// [customs] Gets or sets the customs permissions required for the user to create connections.
  /// [licenses] Gets or sets the required licenses for the user to create connections.
  /// [resourceProvider] Gets or sets the resource provider permissions required for the user to create connections.
  /// [tenant] Gets or sets the required tenant permissions for the connector.
  ConnectorDefinitionsPermissions({
    this.customs,
    this.licenses,
    this.resourceProvider,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': ?customs == null ? null : pulumi.Input.encodeList<CustomPermissionDetails, Map<String, dynamic>>(customs!, (value) => value.toMap()),
      'licenses': ?licenses,
      'resourceProvider': ?resourceProvider == null ? null : pulumi.Input.encodeList<ConnectorDefinitionsResourceProvider, Map<String, dynamic>>(resourceProvider!, (value) => value.toMap()),
      'tenant': ?tenant,
    };
  }

  factory ConnectorDefinitionsPermissions.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsPermissions(
      customs: map['customs'] == null ? null : pulumi.Input.decodeList<CustomPermissionDetails>(map['customs'], (value) => CustomPermissionDetails.fromMap((value as Map).cast<String, dynamic>())),
      licenses: map['licenses'] == null ? null : (map['licenses'] as List).cast<String>(),
      resourceProvider: map['resourceProvider'] == null ? null : pulumi.Input.decodeList<ConnectorDefinitionsResourceProvider>(map['resourceProvider'], (value) => ConnectorDefinitionsResourceProvider.fromMap((value as Map).cast<String, dynamic>())),
      tenant: map['tenant'] == null ? null : (map['tenant'] as List).cast<String>(),
    );
  }
}

