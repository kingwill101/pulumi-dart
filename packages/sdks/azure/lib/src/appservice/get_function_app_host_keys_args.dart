// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_function_app_host_keys_get_function_app_host_keys_args_doc}
/// Arguments for getFunctionAppHostKeys.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_function_app_host_keys_get_function_app_host_keys_args_doc}
class GetFunctionAppHostKeysArgs {
  /// The name of the Function App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Function App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFunctionAppHostKeysArgs].
  /// [name] The name of the Function App.
  /// [resourceGroupName] The name of the Resource Group where the Function App exists.
  GetFunctionAppHostKeysArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFunctionAppHostKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppHostKeysArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

