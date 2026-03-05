// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_environment_args_doc}
/// Arguments for getAppServiceEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_environment_args_doc}
class GetAppServiceEnvironmentArgs {
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceEnvironmentArgs].
  /// [name] Name of the App Service Environment.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetAppServiceEnvironmentArgs({
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

