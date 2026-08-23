// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_connector_tool_action.dart';

class ToolConnectorTool {
  /// (Output)
  /// Action for the tool to use.
  /// Structure is documented below.
  final pulumi.Input<List<ToolConnectorToolAction>>? actions;
  /// (Output)
  /// Configures how authentication is handled in Integration Connectors. By default, an admin authentication is passed in the Integration Connectors API requests. You can override it with a different end-user authentication config. Note: The Connection must have authentication override enabled in order to specify an EUC configuration here - otherwise, the ConnectorTool creation will fail. See https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override for details. Represents a JSON object.
  final pulumi.Input<String>? authConfig;
  /// (Output)
  /// The full resource name of the referenced Integration Connectors Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  final pulumi.Input<String>? connection;
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String>? description;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String>? name;

  /// Creates a new [ToolConnectorTool].
  /// [actions] (Output)
  /// [authConfig] (Output)
  /// [connection] (Output)
  /// [description] (Output)
  /// [name] (Output)
  const ToolConnectorTool({
    this.actions,
    this.authConfig,
    this.connection,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ToolConnectorToolAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ToolConnectorToolAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?authConfig,
      'connection': ?connection,
      'description': ?description,
      'name': ?name,
    };
  }

  factory ToolConnectorTool.fromMap(Map<String, dynamic> map) {
    return ToolConnectorTool(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolConnectorToolAction>(guardedValue, (value) => ToolConnectorToolAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
