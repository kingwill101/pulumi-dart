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
  GetAppServicePlanArgs({
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

  factory GetAppServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

