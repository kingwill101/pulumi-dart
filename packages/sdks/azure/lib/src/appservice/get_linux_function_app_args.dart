// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_linux_function_app_get_linux_function_app_args_doc}
/// Arguments for getLinuxFunctionApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_linux_function_app_get_linux_function_app_args_doc}
class GetLinuxFunctionAppArgs {
  /// The name which should be used for this Linux Function App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Linux Function App should exist.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinuxFunctionAppArgs].
  /// [name] The name which should be used for this Linux Function App.
  /// [resourceGroupName] The name of the Resource Group where the Linux Function App should exist.
  GetLinuxFunctionAppArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLinuxFunctionAppArgs.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

