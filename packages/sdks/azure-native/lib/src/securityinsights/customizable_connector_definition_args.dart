// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customizable_connections_config.dart';
import 'customizable_connector_ui_config.dart';

/// {@template pulumi_securityinsights_customizable_connector_definition_args_doc}
/// The set of arguments for CustomizableConnectorDefinition.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_customizable_connector_definition_args_doc}
class CustomizableConnectorDefinitionArgs {
  /// The UiConfig for 'Customizable' connector definition kind.
  final pulumi.Input<CustomizableConnectionsConfig>? connectionsConfig;

  /// The UiConfig for 'Customizable' connector definition kind.
  final pulumi.Input<CustomizableConnectorUiConfig> connectorUiConfig;

  /// Gets or sets the connector definition created date in UTC format.
  final pulumi.Input<String>? createdTimeUtc;

  /// The data connector definition name.
  final pulumi.Input<String>? dataConnectorDefinitionName;

  /// The kind of the data connector definitions
  /// Expected value is 'Customizable'.
  final pulumi.Input<String> kind;

  /// Gets or sets the connector definition last modified date in UTC format.
  final pulumi.Input<String>? lastModifiedUtc;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [CustomizableConnectorDefinitionArgs].
  /// [connectionsConfig] The UiConfig for 'Customizable' connector definition kind.
  /// [connectorUiConfig] The UiConfig for 'Customizable' connector definition kind.
  /// [createdTimeUtc] Gets or sets the connector definition created date in UTC format.
  /// [dataConnectorDefinitionName] The data connector definition name.
  /// [kind] The kind of the data connector definitions
  /// [lastModifiedUtc] Gets or sets the connector definition last modified date in UTC format.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  CustomizableConnectorDefinitionArgs({
    this.connectionsConfig,
    required this.connectorUiConfig,
    this.createdTimeUtc,
    this.dataConnectorDefinitionName,
    required this.kind,
    this.lastModifiedUtc,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CustomizableConnectionsConfig,
            Map<String, dynamic>
          >(connectionsConfig, (value) => value.toMap()),
      'connectorUiConfig':
          pulumi.Input.mapInputValue<
            CustomizableConnectorUiConfig,
            Map<String, dynamic>
          >(connectorUiConfig, (value) => value.toMap()),
      'createdTimeUtc': ?createdTimeUtc,
      'dataConnectorDefinitionName': ?dataConnectorDefinitionName,
      'kind': kind,
      'lastModifiedUtc': ?lastModifiedUtc,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory CustomizableConnectorDefinitionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomizableConnectorDefinitionArgs(
      connectionsConfig: (() {
        final guardedValue = map['connectionsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomizableConnectionsConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectorUiConfig: pulumi.Input.fromValue(
        CustomizableConnectorUiConfig.fromMap(
          (map['connectorUiConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      createdTimeUtc: (() {
        final guardedValue = map['createdTimeUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataConnectorDefinitionName: (() {
        final guardedValue = map['dataConnectorDefinitionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lastModifiedUtc: (() {
        final guardedValue = map['lastModifiedUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
