// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_customizable_connector_definition_args_doc}
/// Arguments for getCustomizableConnectorDefinition.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_customizable_connector_definition_args_doc}
class GetCustomizableConnectorDefinitionArgs {
  /// The data connector definition name.
  final pulumi.Input<String> dataConnectorDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetCustomizableConnectorDefinitionArgs].
  /// [dataConnectorDefinitionName] The data connector definition name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetCustomizableConnectorDefinitionArgs({
    required pulumi.Output<String> dataConnectorDefinitionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataConnectorDefinitionName = pulumi.Input.asInput<String>(dataConnectorDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorDefinitionName': dataConnectorDefinitionName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetCustomizableConnectorDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomizableConnectorDefinitionArgs(
      dataConnectorDefinitionName: pulumi.Output.create<String>(map['dataConnectorDefinitionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

