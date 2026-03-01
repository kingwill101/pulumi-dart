// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcmFailback mobility agent details.
class InMageRcmFailbackMobilityAgentDetailsResponse {
  /// The agent version expiry date.
  final String agentVersionExpiryDate;
  /// The driver version.
  final String driverVersion;
  /// The driver version expiry date.
  final String driverVersionExpiryDate;
  /// A value indicating whether agent is upgradeable or not.
  final String isUpgradeable;
  /// The time of the last heartbeat received from the agent.
  final String lastHeartbeatUtc;
  /// The latest upgradeable version available without reboot.
  final String latestUpgradableVersionWithoutReboot;
  /// The latest agent version available.
  final String latestVersion;
  /// The whether update is possible or not.
  final List<String> reasonsBlockingUpgrade;
  /// The agent version.
  final String version;

  /// Creates a new [InMageRcmFailbackMobilityAgentDetailsResponse].
  /// [agentVersionExpiryDate] The agent version expiry date.
  /// [driverVersion] The driver version.
  /// [driverVersionExpiryDate] The driver version expiry date.
  /// [isUpgradeable] A value indicating whether agent is upgradeable or not.
  /// [lastHeartbeatUtc] The time of the last heartbeat received from the agent.
  /// [latestUpgradableVersionWithoutReboot] The latest upgradeable version available without reboot.
  /// [latestVersion] The latest agent version available.
  /// [reasonsBlockingUpgrade] The whether update is possible or not.
  /// [version] The agent version.
  InMageRcmFailbackMobilityAgentDetailsResponse({
    required this.agentVersionExpiryDate,
    required this.driverVersion,
    required this.driverVersionExpiryDate,
    required this.isUpgradeable,
    required this.lastHeartbeatUtc,
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
      'latestUpgradableVersionWithoutReboot': latestUpgradableVersionWithoutReboot,
      'latestVersion': latestVersion,
      'reasonsBlockingUpgrade': reasonsBlockingUpgrade,
      'version': version,
    };
  }

  factory InMageRcmFailbackMobilityAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackMobilityAgentDetailsResponse(
      agentVersionExpiryDate: map['agentVersionExpiryDate'] as String,
      driverVersion: map['driverVersion'] as String,
      driverVersionExpiryDate: map['driverVersionExpiryDate'] as String,
      isUpgradeable: map['isUpgradeable'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      latestUpgradableVersionWithoutReboot: map['latestUpgradableVersionWithoutReboot'] as String,
      latestVersion: map['latestVersion'] as String,
      reasonsBlockingUpgrade: (map['reasonsBlockingUpgrade'] as List).cast<String>(),
      version: map['version'] as String,
    );
  }
}

