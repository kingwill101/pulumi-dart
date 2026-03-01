// ignore_for_file: unused_element, unnecessary_cast


/// The period during which some deployable was active in a runtime.
class DeploymentResponse {
  /// Address of the runtime element hosting this deployment.
  final String address;
  /// Configuration used to create this deployment.
  final String config;
  /// Beginning of the lifetime of this deployment.
  final String deployTime;
  /// Platform hosting this deployment.
  final String platform;
  /// Resource URI for the artifact being deployed taken from the deployable field with the same name.
  final List<String> resourceUri;
  /// End of the lifetime of this deployment.
  final String undeployTime;
  /// Identity of the user that triggered this deployment.
  final String userEmail;

  /// Creates a new [DeploymentResponse].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [resourceUri] Resource URI for the artifact being deployed taken from the deployable field with the same name.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  DeploymentResponse({
    required this.address,
    required this.config,
    required this.deployTime,
    required this.platform,
    required this.resourceUri,
    required this.undeployTime,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'config': config,
      'deployTime': deployTime,
      'platform': platform,
      'resourceUri': resourceUri,
      'undeployTime': undeployTime,
      'userEmail': userEmail,
    };
  }

  factory DeploymentResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse(
      address: map['address'] as String,
      config: map['config'] as String,
      deployTime: map['deployTime'] as String,
      platform: map['platform'] as String,
      resourceUri: (map['resourceUri'] as List).cast<String>(),
      undeployTime: map['undeployTime'] as String,
      userEmail: map['userEmail'] as String,
    );
  }
}

