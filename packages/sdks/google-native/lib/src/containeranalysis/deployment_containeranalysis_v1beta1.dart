// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_platform_containeranalysis_v1beta1.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentContaineranalysisV1beta1 {
  /// Address of the runtime element hosting this deployment.
  final pulumi.Input<String>? address;
  /// Configuration used to create this deployment.
  final pulumi.Input<String>? config;
  /// Beginning of the lifetime of this deployment.
  final pulumi.Input<String> deployTime;
  /// Platform hosting this deployment.
  final pulumi.Input<DeploymentPlatformContaineranalysisV1beta1>? platform;
  /// End of the lifetime of this deployment.
  final pulumi.Input<String>? undeployTime;
  /// Identity of the user that triggered this deployment.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [DeploymentContaineranalysisV1beta1].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  const DeploymentContaineranalysisV1beta1({
    this.address,
    this.config,
    required this.deployTime,
    this.platform,
    this.undeployTime,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'config': ?config,
      'deployTime': deployTime,
      'platform': ?pulumi.Input.mapOptionalInputValue<DeploymentPlatformContaineranalysisV1beta1, String>(platform, (value) => value.wireValue),
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }

  factory DeploymentContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentContaineranalysisV1beta1(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployTime: pulumi.Input.fromValue(map['deployTime'] as String),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentPlatformContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      undeployTime: (() { final guardedValue = map['undeployTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

