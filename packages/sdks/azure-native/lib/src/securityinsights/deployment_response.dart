// ignore_for_file: unused_element, unnecessary_cast


/// Description about a deployment.
class DeploymentResponse {
  /// Deployment identifier.
  final String? deploymentId;
  /// Url to access repository action logs.
  final String? deploymentLogsUrl;
  /// The outcome of the deployment.
  final String? deploymentResult;
  /// Current status of the deployment.
  final String? deploymentState;
  /// The time when the deployment finished.
  final String? deploymentTime;

  /// Creates a new [DeploymentResponse].
  /// [deploymentId] Deployment identifier.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [deploymentResult] The outcome of the deployment.
  /// [deploymentState] Current status of the deployment.
  /// [deploymentTime] The time when the deployment finished.
  DeploymentResponse({
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

  factory DeploymentResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse(
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      deploymentLogsUrl: map['deploymentLogsUrl'] == null ? null : map['deploymentLogsUrl'] as String,
      deploymentResult: map['deploymentResult'] == null ? null : map['deploymentResult'] as String,
      deploymentState: map['deploymentState'] == null ? null : map['deploymentState'] as String,
      deploymentTime: map['deploymentTime'] == null ? null : map['deploymentTime'] as String,
    );
  }
}

