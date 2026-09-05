// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_connector_toolset_auth_config.dart';
import 'toolset_connector_toolset_connector_action.dart';

class ToolsetConnectorToolset {
  /// Configures how authentication is handled in Integration Connectors.
  /// Structure is documented below.
  final pulumi.Input<ToolsetConnectorToolsetAuthConfig?>? authConfig;
  /// The full resource name of the referenced Integration Connectors
  /// Connection.
  /// Format:
  /// `projects/{project}/locations/{location}/connections/{connection}`
  final pulumi.Input<String> connection;
  /// The list of connector actions/entity operations to generate tools for.
  /// Structure is documented below.
  final pulumi.Input<List<ToolsetConnectorToolsetConnectorAction>> connectorActions;

  /// Creates a new [ToolsetConnectorToolset].
  /// [authConfig] Configures how authentication is handled in Integration Connectors.
  /// [connection] The full resource name of the referenced Integration Connectors
  /// [connectorActions] The list of connector actions/entity operations to generate tools for.
  const ToolsetConnectorToolset({
    this.authConfig,
    required this.connection,
    required this.connectorActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetConnectorToolsetAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'connection': connection,
      'connectorActions': pulumi.Input.mapInputValue<List<ToolsetConnectorToolsetConnectorAction>, List<Map<String, dynamic>>>(connectorActions, (value) => pulumi.Input.encodeList<ToolsetConnectorToolsetConnectorAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolsetConnectorToolset.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolset(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetConnectorToolsetAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connection: pulumi.Input.fromValue(map['connection'] as String),
      connectorActions: pulumi.Input.fromValue(pulumi.Input.decodeList<ToolsetConnectorToolsetConnectorAction>(map['connectorActions']!, (value) => ToolsetConnectorToolsetConnectorAction.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
