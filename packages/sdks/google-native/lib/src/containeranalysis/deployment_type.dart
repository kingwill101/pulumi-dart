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
      'platform': ?pulumi.Input.mapOptionalInputValue<DeploymentPlatform, String>(platform, (value) => value.wireValue),
      'resourceUri': ?resourceUri,
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployTime: (() { final guardedValue = map['deployTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentPlatform.fromValue(guardedValue as String)); })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      undeployTime: (() { final guardedValue = map['undeployTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

