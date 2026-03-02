// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_platform.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentType {
  /// Address of the runtime element hosting this deployment.
  final pulumi.Input<String>? address;
  /// Configuration used to create this deployment.
  final pulumi.Input<String>? config;
  /// Beginning of the lifetime of this deployment.
  final pulumi.Input<String>? deployTime;
  /// Platform hosting this deployment.
  final pulumi.Input<DeploymentPlatform>? platform;
  /// Resource URI for the artifact being deployed taken from the deployable field with the same name.
  final pulumi.Input<List<String>>? resourceUri;
  /// End of the lifetime of this deployment.
  final pulumi.Input<String>? undeployTime;
  /// Identity of the user that triggered this deployment.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [DeploymentType].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [resourceUri] Resource URI for the artifact being deployed taken from the deployable field with the same name.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  DeploymentType({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'config': ?config,
      'deployTime': ?deployTime,
      'platform': ?pulumi.Input.mapOptionalInputValue<DeploymentPlatform, String>(platform, (value) => value.value),
      'resourceUri': ?resourceUri,
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      config: map['config'] == null ? null : (map['config'] as String).input(),
      deployTime: map['deployTime'] == null ? null : (map['deployTime'] as String).input(),
      platform: map['platform'] == null ? null : (DeploymentPlatform.fromValue(map['platform'] as String)).input(),
      resourceUri: map['resourceUri'] == null ? null : ((map['resourceUri'] as List).cast<String>()).input(),
      undeployTime: map['undeployTime'] == null ? null : (map['undeployTime'] as String).input(),
      userEmail: map['userEmail'] == null ? null : (map['userEmail'] as String).input(),
    );
  }
}

