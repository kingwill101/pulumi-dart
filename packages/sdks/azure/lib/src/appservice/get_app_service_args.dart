// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_app_service_get_app_service_args_doc}
/// Arguments for getAppService.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_app_service_get_app_service_args_doc}
class GetAppServiceArgs {
  /// The name of the App Service.
  final pulumi.Input<String> name;

  /// The Name of the Resource Group where the App Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceArgs].
  /// [name] The name of the App Service.
  /// [resourceGroupName] The Name of the Resource Group where the App Service exists.
  GetAppServiceArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
