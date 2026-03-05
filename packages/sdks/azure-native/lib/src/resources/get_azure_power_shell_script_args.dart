// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_azure_power_shell_script_args_doc}
/// Arguments for getAzurePowerShellScript.
/// {@endtemplate}
/// {@macro pulumi_resources_get_azure_power_shell_script_args_doc}
class GetAzurePowerShellScriptArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment script.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetAzurePowerShellScriptArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptName] Name of the deployment script.
  GetAzurePowerShellScriptArgs({
    required this.resourceGroupName,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scriptName': scriptName,
    };
  }

  factory GetAzurePowerShellScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetAzurePowerShellScriptArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}

