// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_response.dart';

/// Information regarding a deployment.
class DeploymentInfoResponse {
  /// Deployment information.
  final pulumi.Input<DeploymentResponse>? deployment;

  /// Status while fetching the last deployment.
  final pulumi.Input<String>? deploymentFetchStatus;

  /// Additional details about the deployment that can be shown to the user.
  final pulumi.Input<String>? message;

  /// Creates a new [DeploymentInfoResponse].
  /// [deployment] Deployment information.
  /// [deploymentFetchStatus] Status while fetching the last deployment.
  /// [message] Additional details about the deployment that can be shown to the user.
  DeploymentInfoResponse({
    this.deployment,
    this.deploymentFetchStatus,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentResponse,
            Map<String, dynamic>
          >(deployment, (value) => value.toMap()),
      'deploymentFetchStatus': ?deploymentFetchStatus,
      'message': ?message,
    };
  }

  factory DeploymentInfoResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentInfoResponse(
      deployment: (() {
        final guardedValue = map['deployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deploymentFetchStatus: (() {
        final guardedValue = map['deploymentFetchStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
