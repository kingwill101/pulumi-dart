// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_function_secrets_args_doc}
/// Arguments for listWebAppFunctionSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_function_secrets_args_doc}
class ListWebAppFunctionSecretsArgs {
  /// Function name.
  final pulumi.Input<String> functionName;
  /// Site name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppFunctionSecretsArgs].
  /// [functionName] Function name.
  /// [name] Site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListWebAppFunctionSecretsArgs({
    required this.functionName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppFunctionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionSecretsArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
