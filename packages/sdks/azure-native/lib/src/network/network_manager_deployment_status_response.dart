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
  NetworkManagerDeploymentStatusResponse({
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
      commitTime: map['commitTime'] == null ? null : (map['commitTime']! as String).input(),
      configurationIds: map['configurationIds'] == null ? null : ((map['configurationIds']! as List).cast<String>()).input(),
      deploymentStatus: map['deploymentStatus'] == null ? null : (map['deploymentStatus']! as String).input(),
      deploymentType: map['deploymentType'] == null ? null : (map['deploymentType']! as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

