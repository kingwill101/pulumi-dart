// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_service_plan_get_service_plan_args_doc}
/// Arguments for getServicePlan.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_service_plan_get_service_plan_args_doc}
class GetServicePlanArgs {
  /// The name of this Service Plan.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Service Plan exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServicePlanArgs].
  /// [name] The name of this Service Plan.
  /// [resourceGroupName] The name of the Resource Group where the Service Plan exists.
  GetServicePlanArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePlanArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
