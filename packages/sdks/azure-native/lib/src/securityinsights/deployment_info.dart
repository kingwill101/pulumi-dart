// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_type.dart';

/// Information regarding a deployment.
class DeploymentInfo {
  /// Deployment information.
  final pulumi.Input<DeploymentType>? deployment;
  /// Status while fetching the last deployment.
  final pulumi.Input<String>? deploymentFetchStatus;
  /// Additional details about the deployment that can be shown to the user.
  final pulumi.Input<String>? message;

  /// Creates a new [DeploymentInfo].
  /// [deployment] Deployment information.
  /// [deploymentFetchStatus] Status while fetching the last deployment.
  /// [message] Additional details about the deployment that can be shown to the user.
  DeploymentInfo({
    this.deployment,
    this.deploymentFetchStatus,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentType, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'deploymentFetchStatus': ?deploymentFetchStatus,
      'message': ?message,
    };
  }

  factory DeploymentInfo.fromMap(Map<String, dynamic> map) {
    return DeploymentInfo(
      deployment: map['deployment'] == null ? null : (DeploymentType.fromMap((map['deployment']! as Map).cast<String, dynamic>())).input(),
      deploymentFetchStatus: map['deploymentFetchStatus'] == null ? null : (map['deploymentFetchStatus']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

