// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_definitions_resource_provider.dart';
import 'custom_permission_details.dart';

/// The required Permissions for the connector.
class ConnectorDefinitionsPermissions {
  /// Gets or sets the customs permissions required for the user to create connections.
  final pulumi.Input<List<CustomPermissionDetails>>? customs;

  /// Gets or sets the required licenses for the user to create connections.
  final pulumi.Input<List<String>>? licenses;

  /// Gets or sets the resource provider permissions required for the user to create connections.
  final pulumi.Input<List<ConnectorDefinitionsResourceProvider>>?
  resourceProvider;

  /// Gets or sets the required tenant permissions for the connector.
  final pulumi.Input<List<String>>? tenant;

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
      'customs':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomPermissionDetails>,
            List<Map<String, dynamic>>
          >(
            customs,
            (value) =>
                pulumi.Input.encodeList<
                  CustomPermissionDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'licenses': ?licenses,
      'resourceProvider':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectorDefinitionsResourceProvider>,
            List<Map<String, dynamic>>
          >(
            resourceProvider,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectorDefinitionsResourceProvider,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tenant': ?tenant,
    };
  }

  factory ConnectorDefinitionsPermissions.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsPermissions(
      customs: (() {
        final guardedValue = map['customs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomPermissionDetails>(
            guardedValue,
            (value) => CustomPermissionDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      licenses: (() {
        final guardedValue = map['licenses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceProvider: (() {
        final guardedValue = map['resourceProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectorDefinitionsResourceProvider>(
            guardedValue,
            (value) => ConnectorDefinitionsResourceProvider.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
