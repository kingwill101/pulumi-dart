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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppFunctionSecretsArgs].
  /// [functionName] Function name.
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppFunctionSecretsArgs({
    required pulumi.Output<String> functionName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppFunctionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionSecretsArgs(
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

