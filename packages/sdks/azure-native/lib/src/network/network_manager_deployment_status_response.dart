// ignore_for_file: unused_element, unnecessary_cast


/// Network Manager Deployment Status.
class NetworkManagerDeploymentStatusResponse {
  /// Commit Time.
  final String? commitTime;
  /// List of configuration ids.
  final List<String>? configurationIds;
  /// Deployment Status.
  final String? deploymentStatus;
  /// Configuration Deployment Type.
  final String? deploymentType;
  /// Error Message.
  final String? errorMessage;
  /// Region Name.
  final String? region;

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
      commitTime: map['commitTime'] == null ? null : map['commitTime'] as String,
      configurationIds: map['configurationIds'] == null ? null : (map['configurationIds'] as List).cast<String>(),
      deploymentStatus: map['deploymentStatus'] == null ? null : map['deploymentStatus'] as String,
      deploymentType: map['deploymentType'] == null ? null : map['deploymentType'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

