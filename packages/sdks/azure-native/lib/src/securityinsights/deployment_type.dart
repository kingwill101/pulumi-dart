// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description about a deployment.
class DeploymentType {
  /// Deployment identifier.
  final pulumi.Input<String>? deploymentId;
  /// Url to access repository action logs.
  final pulumi.Input<String>? deploymentLogsUrl;
  /// The outcome of the deployment.
  final pulumi.Input<String>? deploymentResult;
  /// Current status of the deployment.
  final pulumi.Input<String>? deploymentState;
  /// The time when the deployment finished.
  final pulumi.Input<String>? deploymentTime;

  /// Creates a new [DeploymentType].
  /// [deploymentId] Deployment identifier.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [deploymentResult] The outcome of the deployment.
  /// [deploymentState] Current status of the deployment.
  /// [deploymentTime] The time when the deployment finished.
  DeploymentType({
    this.deploymentId,
    this.deploymentLogsUrl,
    this.deploymentResult,
    this.deploymentState,
    this.deploymentTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'deploymentLogsUrl': ?deploymentLogsUrl,
      'deploymentResult': ?deploymentResult,
      'deploymentState': ?deploymentState,
      'deploymentTime': ?deploymentTime,
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentLogsUrl: (() { final guardedValue = map['deploymentLogsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentResult: (() { final guardedValue = map['deploymentResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentState: (() { final guardedValue = map['deploymentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTime: (() { final guardedValue = map['deploymentTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

