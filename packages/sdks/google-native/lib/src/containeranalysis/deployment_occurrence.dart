// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_occurrence_platform.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentOccurrence {
  /// Address of the runtime element hosting this deployment.
  final pulumi.Input<String>? address;
  /// Configuration used to create this deployment.
  final pulumi.Input<String>? config;
  /// Beginning of the lifetime of this deployment.
  final pulumi.Input<String> deployTime;
  /// Platform hosting this deployment.
  final pulumi.Input<DeploymentOccurrencePlatform>? platform;
  /// End of the lifetime of this deployment.
  final pulumi.Input<String>? undeployTime;
  /// Identity of the user that triggered this deployment.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [DeploymentOccurrence].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  DeploymentOccurrence({
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
      'platform': ?pulumi.Input.mapOptionalInputValue<DeploymentOccurrencePlatform, String>(platform, (value) => value.value),
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }

  factory DeploymentOccurrence.fromMap(Map<String, dynamic> map) {
    return DeploymentOccurrence(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      config: map['config'] == null ? null : (map['config'] as String).input(),
      deployTime: (map['deployTime'] as String).input(),
      platform: map['platform'] == null ? null : (DeploymentOccurrencePlatform.fromValue(map['platform'] as String)).input(),
      undeployTime: map['undeployTime'] == null ? null : (map['undeployTime'] as String).input(),
      userEmail: map['userEmail'] == null ? null : (map['userEmail'] as String).input(),
    );
  }
}

