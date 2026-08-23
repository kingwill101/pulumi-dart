// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_environment_args_doc}
/// Arguments for getAppServiceEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_environment_args_doc}
class GetAppServiceEnvironmentArgs {
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceEnvironmentArgs].
  /// [name] Name of the App Service Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAppServiceEnvironmentArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
