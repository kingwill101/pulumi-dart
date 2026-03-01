// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_azure_cli_script_args_doc}
/// Arguments for getAzureCliScript.
/// {@endtemplate}
/// {@macro pulumi_resources_get_azure_cli_script_args_doc}
class GetAzureCliScriptArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment script.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetAzureCliScriptArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptName] Name of the deployment script.
  GetAzureCliScriptArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scriptName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptName = pulumi.Input.asInput<String>(scriptName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scriptName': scriptName,
    };
  }

  factory GetAzureCliScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureCliScriptArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptName: pulumi.Output.create<String>(map['scriptName'] as String),
    );
  }
}

