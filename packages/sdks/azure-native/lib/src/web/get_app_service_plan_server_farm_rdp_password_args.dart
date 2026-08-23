// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_plan_server_farm_rdp_password_args_doc}
/// Arguments for getAppServicePlanServerFarmRdpPassword.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_plan_server_farm_rdp_password_args_doc}
class GetAppServicePlanServerFarmRdpPasswordArgs {
  /// Name of the App Service plan.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServicePlanServerFarmRdpPasswordArgs].
  /// [name] Name of the App Service plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAppServicePlanServerFarmRdpPasswordArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServicePlanServerFarmRdpPasswordArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanServerFarmRdpPasswordArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
