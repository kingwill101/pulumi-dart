// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_active_deployment_spring_cloud_active_deployment_args_doc}
/// The set of arguments for SpringCloudActiveDeployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_active_deployment_spring_cloud_active_deployment_args_doc}
class SpringCloudActiveDeploymentArgs {
  /// Specifies the name of Spring Cloud Deployment which is going to be active.
  final pulumi.Input<String> deploymentName;

  /// Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudActiveDeploymentArgs].
  /// [deploymentName] Specifies the name of Spring Cloud Deployment which is going to be active.
  /// [springCloudAppId] Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created.
  SpringCloudActiveDeploymentArgs({
    required this.deploymentName,
    required this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudActiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudActiveDeploymentArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      springCloudAppId: pulumi.Input.fromValue(
        map['springCloudAppId'] as String,
      ),
    );
  }
}
