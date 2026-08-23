// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_deployment_args_doc}
/// Arguments for getWebAppDeployment.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_deployment_args_doc}
class GetWebAppDeploymentArgs {
  /// Deployment ID.
  final pulumi.Input<String> id;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppDeploymentArgs].
  /// [id] Deployment ID.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppDeploymentArgs({
    required this.id,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
