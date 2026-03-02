// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudActiveDeployment resources.
class SpringCloudActiveDeploymentState {
  /// Specifies the name of Spring Cloud Deployment which is going to be active.
  final pulumi.Input<String>? deploymentName;
  /// Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudAppId;

  /// Creates a new [SpringCloudActiveDeploymentState].
  /// [deploymentName] Specifies the name of Spring Cloud Deployment which is going to be active.
  /// [springCloudAppId] Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created.
  SpringCloudActiveDeploymentState({
    this.deploymentName,
    this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'springCloudAppId': ?springCloudAppId,
    };
  }

  factory SpringCloudActiveDeploymentState.fromMap(Map<String, dynamic> map) {
    return SpringCloudActiveDeploymentState(
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName']! as String).input(),
      springCloudAppId: map['springCloudAppId'] == null ? null : (map['springCloudAppId']! as String).input(),
    );
  }
}

