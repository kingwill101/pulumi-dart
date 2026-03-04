// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The period during which some deployable was active in a runtime.
class DeploymentOccurrenceResponse {
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

  /// Creates a new [DeploymentOccurrenceResponse].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [resourceUri] Resource URI for the artifact being deployed taken from the deployable field with the same name.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  DeploymentOccurrenceResponse({
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

  factory DeploymentOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentOccurrenceResponse(
      address: pulumi.Input.fromValue(map['address'] as String),
      config: pulumi.Input.fromValue(map['config'] as String),
      deployTime: pulumi.Input.fromValue(map['deployTime'] as String),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      resourceUri: pulumi.Input.fromValue(
        (map['resourceUri'] as List).cast<String>(),
      ),
      undeployTime: pulumi.Input.fromValue(map['undeployTime'] as String),
      userEmail: pulumi.Input.fromValue(map['userEmail'] as String),
    );
  }
}
