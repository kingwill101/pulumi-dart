// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Manager Deployment Status.
class NetworkManagerDeploymentStatusResponse {
  /// Commit Time.
  final pulumi.Input<String>? commitTime;
  /// List of configuration ids.
  final pulumi.Input<List<String>>? configurationIds;
  /// Deployment Status.
  final pulumi.Input<String>? deploymentStatus;
  /// Configuration Deployment Type.
  final pulumi.Input<String>? deploymentType;
  /// Error Message.
  final pulumi.Input<String>? errorMessage;
  /// Region Name.
  final pulumi.Input<String>? region;

  /// Creates a new [NetworkManagerDeploymentStatusResponse].
  /// [commitTime] Commit Time.
  /// [configurationIds] List of configuration ids.
  /// [deploymentStatus] Deployment Status.
  /// [deploymentType] Configuration Deployment Type.
  /// [errorMessage] Error Message.
  /// [region] Region Name.
  const NetworkManagerDeploymentStatusResponse({
    this.commitTime,
    this.configurationIds,
    this.deploymentStatus,
    this.deploymentType,
    this.errorMessage,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitTime': ?commitTime,
      'configurationIds': ?configurationIds,
      'deploymentStatus': ?deploymentStatus,
      'deploymentType': ?deploymentType,
      'errorMessage': ?errorMessage,
      'region': ?region,
    };
  }

  factory NetworkManagerDeploymentStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerDeploymentStatusResponse(
      commitTime: (() { final guardedValue = map['commitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationIds: (() { final guardedValue = map['configurationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
