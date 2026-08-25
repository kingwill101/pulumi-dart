// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_connector_spec_action.dart';
import 'cx_tool_version_tool_connector_spec_end_user_auth_config.dart';

class CxToolVersionToolConnectorSpec {
  /// Actions for the tool to use.
  /// Structure is documented below.
  final pulumi.Input<List<CxToolVersionToolConnectorSpecAction>> actions;
  /// Integration Connectors end-user authentication configuration.
  /// If configured, the end-user authentication fields will be passed in the Integration Connectors API request
  /// and override the admin, default authentication configured for the Connection.
  /// Note: The Connection must have authentication override enabled in order to specify an EUC configuration here - otherwise,
  /// the ConnectorTool creation will fail.
  /// See: https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override        properties:
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolConnectorSpecEndUserAuthConfig?>? endUserAuthConfig;
  /// The full resource name of the referenced Integration Connectors Connection.
  /// Format: projects/*/locations/*/connections/*
  final pulumi.Input<String> name;

  /// Creates a new [CxToolVersionToolConnectorSpec].
  /// [actions] Actions for the tool to use.
  /// [endUserAuthConfig] Integration Connectors end-user authentication configuration.
  /// [name] The full resource name of the referenced Integration Connectors Connection.
  const CxToolVersionToolConnectorSpec({
    required this.actions,
    this.endUserAuthConfig,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<CxToolVersionToolConnectorSpecAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<CxToolVersionToolConnectorSpecAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endUserAuthConfig': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolConnectorSpecEndUserAuthConfig, Map<String, dynamic>>(endUserAuthConfig, (value) => value.toMap()),
      'name': name,
    };
  }

  factory CxToolVersionToolConnectorSpec.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolConnectorSpec(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<CxToolVersionToolConnectorSpecAction>(map['actions']!, (value) => CxToolVersionToolConnectorSpecAction.fromMap((value as Map).cast<String, dynamic>()))),
      endUserAuthConfig: (() { final guardedValue = map['endUserAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolVersionToolConnectorSpecEndUserAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
