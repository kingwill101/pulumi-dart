// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The period during which some deployable was active in a runtime.
class DeploymentResponse {
  /// Address of the runtime element hosting this deployment.
  final pulumi.Input<String> address;
  /// Configuration used to create this deployment.
  final pulumi.Input<String> config;
  /// Beginning of the lifetime of this deployment.
  final pulumi.Input<String> deployTime;
  /// Platform hosting this deployment.
  final pulumi.Input<String> platform;
  /// Resource URI for the artifact being deployed taken from the deployable field with the same name.
  final pulumi.Input<List<String>> resourceUri;
  /// End of the lifetime of this deployment.
  final pulumi.Input<String> undeployTime;
  /// Identity of the user that triggered this deployment.
  final pulumi.Input<String> userEmail;

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
      address: (map['address'] as String).input(),
      config: (map['config'] as String).input(),
      deployTime: (map['deployTime'] as String).input(),
      platform: (map['platform'] as String).input(),
      resourceUri: ((map['resourceUri'] as List).cast<String>()).input(),
      undeployTime: (map['undeployTime'] as String).input(),
      userEmail: (map['userEmail'] as String).input(),
    );
  }
}

