// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_windows_function_app_get_windows_function_app_args_doc}
/// Arguments for getWindowsFunctionApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_windows_function_app_get_windows_function_app_args_doc}
class GetWindowsFunctionAppArgs {
  /// The name of this Windows Function App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Windows Function App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWindowsFunctionAppArgs].
  /// [name] The name of this Windows Function App.
  /// [resourceGroupName] The name of the Resource Group where the Windows Function App exists.
  GetWindowsFunctionAppArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWindowsFunctionAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

