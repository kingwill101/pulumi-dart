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

  factory GetAppServiceEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

