// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_plan_args_doc}
/// Arguments for getAppServicePlan.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_plan_args_doc}
class GetAppServicePlanArgs {
  /// Name of the App Service plan.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServicePlanArgs].
  /// [name] Name of the App Service plan.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
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

