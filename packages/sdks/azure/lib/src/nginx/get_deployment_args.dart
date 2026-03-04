// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_get_deployment_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_nginx_get_deployment_get_deployment_args_doc}
class GetDeploymentArgs {
  /// The name of this NGINX Deployment.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the NGINX Deployment exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentArgs].
  /// [name] The name of this NGINX Deployment.
  /// [resourceGroupName] The name of the Resource Group where the NGINX Deployment exists.
  GetDeploymentArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
