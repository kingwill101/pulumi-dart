// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_app_service_plan_get_app_service_plan_args_doc}
/// Arguments for getAppServicePlan.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_app_service_plan_get_app_service_plan_args_doc}
class GetAppServicePlanArgs {
  /// The name of the App Service Plan.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the App Service Plan exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServicePlanArgs].
  /// [name] The name of the App Service Plan.
  /// [resourceGroupName] The Name of the Resource Group where the App Service Plan exists.
  const GetAppServicePlanArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

