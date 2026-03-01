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
    pulumi.Output<CustomizableConnectionsConfig>? connectionsConfig,
    required pulumi.Output<CustomizableConnectorUiConfig> connectorUiConfig,
    pulumi.Output<String>? createdTimeUtc,
    pulumi.Output<String>? dataConnectorDefinitionName,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? lastModifiedUtc,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      connectionsConfig = pulumi.Input.asOptionalInput<CustomizableConnectionsConfig>(connectionsConfig),
      connectorUiConfig = pulumi.Input.asInput<CustomizableConnectorUiConfig>(connectorUiConfig),
      createdTimeUtc = pulumi.Input.asOptionalInput<String>(createdTimeUtc),
      dataConnectorDefinitionName = pulumi.Input.asOptionalInput<String>(dataConnectorDefinitionName),
      kind = pulumi.Input.asInput<String>(kind),
      lastModifiedUtc = pulumi.Input.asOptionalInput<String>(lastModifiedUtc),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionsConfig': ?pulumi.Input.mapOptionalInputValue<CustomizableConnectionsConfig, Map<String, dynamic>>(connectionsConfig, (value) => value.toMap()),
      'connectorUiConfig': pulumi.Input.mapInputValue<CustomizableConnectorUiConfig, Map<String, dynamic>>(connectorUiConfig, (value) => value.toMap()),
      'createdTimeUtc': ?createdTimeUtc,
      'dataConnectorDefinitionName': ?dataConnectorDefinitionName,
      'kind': kind,
      'lastModifiedUtc': ?lastModifiedUtc,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory CustomizableConnectorDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return CustomizableConnectorDefinitionArgs(
      connectionsConfig: map['connectionsConfig'] == null ? null : pulumi.Output.create<CustomizableConnectionsConfig>(CustomizableConnectionsConfig.fromMap((map['connectionsConfig'] as Map).cast<String, dynamic>())),
      connectorUiConfig: pulumi.Output.create<CustomizableConnectorUiConfig>(CustomizableConnectorUiConfig.fromMap((map['connectorUiConfig'] as Map).cast<String, dynamic>())),
      createdTimeUtc: map['createdTimeUtc'] == null ? null : pulumi.Output.create<String>(map['createdTimeUtc'] as String),
      dataConnectorDefinitionName: map['dataConnectorDefinitionName'] == null ? null : pulumi.Output.create<String>(map['dataConnectorDefinitionName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      lastModifiedUtc: map['lastModifiedUtc'] == null ? null : pulumi.Output.create<String>(map['lastModifiedUtc'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

