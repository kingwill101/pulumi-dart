// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm mobility agent details.
class InMageRcmMobilityAgentDetailsResponse {
  /// The agent version expiry date.
  final pulumi.Input<String> agentVersionExpiryDate;
  /// The driver version.
  final pulumi.Input<String> driverVersion;
  /// The driver version expiry date.
  final pulumi.Input<String> driverVersionExpiryDate;
  /// A value indicating whether agent is upgradeable or not.
  final pulumi.Input<String> isUpgradeable;
  /// The time of the last heartbeat received from the agent.
  final pulumi.Input<String> lastHeartbeatUtc;
  /// The latest agent version release date.
  final pulumi.Input<String> latestAgentReleaseDate;
  /// The latest upgradeable version available without reboot.
  final pulumi.Input<String> latestUpgradableVersionWithoutReboot;
  /// The latest agent version available.
  final pulumi.Input<String> latestVersion;
  /// The whether update is possible or not.
  final pulumi.Input<List<String>> reasonsBlockingUpgrade;
  /// The agent version.
  final pulumi.Input<String> version;

  /// Creates a new [InMageRcmMobilityAgentDetailsResponse].
  /// [agentVersionExpiryDate] The agent version expiry date.
  /// [driverVersion] The driver version.
  /// [driverVersionExpiryDate] The driver version expiry date.
  /// [isUpgradeable] A value indicating whether agent is upgradeable or not.
  /// [lastHeartbeatUtc] The time of the last heartbeat received from the agent.
  /// [latestAgentReleaseDate] The latest agent version release date.
  /// [latestUpgradableVersionWithoutReboot] The latest upgradeable version available without reboot.
  /// [latestVersion] The latest agent version available.
  /// [reasonsBlockingUpgrade] The whether update is possible or not.
  /// [version] The agent version.
  InMageRcmMobilityAgentDetailsResponse({
    required this.agentVersionExpiryDate,
    required this.driverVersion,
    required this.driverVersionExpiryDate,
    required this.isUpgradeable,
    required this.lastHeartbeatUtc,
    required this.latestAgentReleaseDate,
    required this.latestUpgradableVersionWithoutReboot,
    required this.latestVersion,
    required this.reasonsBlockingUpgrade,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersionExpiryDate': agentVersionExpiryDate,
      'driverVersion': driverVersion,
      'driverVersionExpiryDate': driverVersionExpiryDate,
      'isUpgradeable': isUpgradeable,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'latestAgentReleaseDate': latestAgentReleaseDate,
      'latestUpgradableVersionWithoutReboot': latestUpgradableVersionWithoutReboot,
      'latestVersion': latestVersion,
      'reasonsBlockingUpgrade': reasonsBlockingUpgrade,
      'version': version,
    };
  }

  factory InMageRcmMobilityAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmMobilityAgentDetailsResponse(
      agentVersionExpiryDate: pulumi.Input.fromValue(map['agentVersionExpiryDate'] as String),
      driverVersion: pulumi.Input.fromValue(map['driverVersion'] as String),
      driverVersionExpiryDate: pulumi.Input.fromValue(map['driverVersionExpiryDate'] as String),
      isUpgradeable: pulumi.Input.fromValue(map['isUpgradeable'] as String),
      lastHeartbeatUtc: pulumi.Input.fromValue(map['lastHeartbeatUtc'] as String),
      latestAgentReleaseDate: pulumi.Input.fromValue(map['latestAgentReleaseDate'] as String),
      latestUpgradableVersionWithoutReboot: pulumi.Input.fromValue(map['latestUpgradableVersionWithoutReboot'] as String),
      latestVersion: pulumi.Input.fromValue(map['latestVersion'] as String),
      reasonsBlockingUpgrade: pulumi.Input.fromValue((map['reasonsBlockingUpgrade'] as List).cast<String>()),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

