// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Self-hosted integration runtime node.
class SelfHostedIntegrationRuntimeNodeResponse {
  /// The integration runtime capabilities dictionary
  final pulumi.Input<Map<String, String>> capabilities;
  /// Maximum concurrent jobs on the integration runtime node.
  final pulumi.Input<int> concurrentJobsLimit;
  /// The time at which the integration runtime will expire in ISO8601 format.
  final pulumi.Input<String> expiryTime;
  /// URI for the host machine of the integration runtime.
  final pulumi.Input<String> hostServiceUri;
  /// Indicates whether this node is the active dispatcher for integration runtime requests.
  final pulumi.Input<bool> isActiveDispatcher;
  /// The most recent time at which the integration runtime was connected in ISO8601 format.
  final pulumi.Input<String> lastConnectTime;
  /// The last time for the integration runtime node update end.
  final pulumi.Input<String> lastEndUpdateTime;
  /// The time the node last started up.
  final pulumi.Input<String> lastStartTime;
  /// The last time for the integration runtime node update start.
  final pulumi.Input<String> lastStartUpdateTime;
  /// The integration runtime node last stop time.
  final pulumi.Input<String> lastStopTime;
  /// The result of the last integration runtime node update.
  final pulumi.Input<String> lastUpdateResult;
  /// Machine name of the integration runtime node.
  final pulumi.Input<String> machineName;
  /// The maximum concurrent jobs in this integration runtime.
  final pulumi.Input<int> maxConcurrentJobs;
  /// Name of the integration runtime node.
  final pulumi.Input<String> nodeName;
  /// The time at which the integration runtime node was registered in ISO8601 format.
  final pulumi.Input<String> registerTime;
  /// Status of the integration runtime node.
  final pulumi.Input<String> status;
  /// Version of the integration runtime node.
  final pulumi.Input<String> version;
  /// Status of the integration runtime node version.
  final pulumi.Input<String> versionStatus;

  /// Creates a new [SelfHostedIntegrationRuntimeNodeResponse].
  /// [capabilities] The integration runtime capabilities dictionary
  /// [concurrentJobsLimit] Maximum concurrent jobs on the integration runtime node.
  /// [expiryTime] The time at which the integration runtime will expire in ISO8601 format.
  /// [hostServiceUri] URI for the host machine of the integration runtime.
  /// [isActiveDispatcher] Indicates whether this node is the active dispatcher for integration runtime requests.
  /// [lastConnectTime] The most recent time at which the integration runtime was connected in ISO8601 format.
  /// [lastEndUpdateTime] The last time for the integration runtime node update end.
  /// [lastStartTime] The time the node last started up.
  /// [lastStartUpdateTime] The last time for the integration runtime node update start.
  /// [lastStopTime] The integration runtime node last stop time.
  /// [lastUpdateResult] The result of the last integration runtime node update.
  /// [machineName] Machine name of the integration runtime node.
  /// [maxConcurrentJobs] The maximum concurrent jobs in this integration runtime.
  /// [nodeName] Name of the integration runtime node.
  /// [registerTime] The time at which the integration runtime node was registered in ISO8601 format.
  /// [status] Status of the integration runtime node.
  /// [version] Version of the integration runtime node.
  /// [versionStatus] Status of the integration runtime node version.
  SelfHostedIntegrationRuntimeNodeResponse({
    required this.capabilities,
    required this.concurrentJobsLimit,
    required this.expiryTime,
    required this.hostServiceUri,
    required this.isActiveDispatcher,
    required this.lastConnectTime,
    required this.lastEndUpdateTime,
    required this.lastStartTime,
    required this.lastStartUpdateTime,
    required this.lastStopTime,
    required this.lastUpdateResult,
    required this.machineName,
    required this.maxConcurrentJobs,
    required this.nodeName,
    required this.registerTime,
    required this.status,
    required this.version,
    required this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'concurrentJobsLimit': concurrentJobsLimit,
      'expiryTime': expiryTime,
      'hostServiceUri': hostServiceUri,
      'isActiveDispatcher': isActiveDispatcher,
      'lastConnectTime': lastConnectTime,
      'lastEndUpdateTime': lastEndUpdateTime,
      'lastStartTime': lastStartTime,
      'lastStartUpdateTime': lastStartUpdateTime,
      'lastStopTime': lastStopTime,
      'lastUpdateResult': lastUpdateResult,
      'machineName': machineName,
      'maxConcurrentJobs': maxConcurrentJobs,
      'nodeName': nodeName,
      'registerTime': registerTime,
      'status': status,
      'version': version,
      'versionStatus': versionStatus,
    };
  }

  factory SelfHostedIntegrationRuntimeNodeResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntimeNodeResponse(
      capabilities: ((map['capabilities'] as Map).cast<String, String>()).input(),
      concurrentJobsLimit: (map['concurrentJobsLimit'] as int).input(),
      expiryTime: (map['expiryTime'] as String).input(),
      hostServiceUri: (map['hostServiceUri'] as String).input(),
      isActiveDispatcher: (map['isActiveDispatcher'] as bool).input(),
      lastConnectTime: (map['lastConnectTime'] as String).input(),
      lastEndUpdateTime: (map['lastEndUpdateTime'] as String).input(),
      lastStartTime: (map['lastStartTime'] as String).input(),
      lastStartUpdateTime: (map['lastStartUpdateTime'] as String).input(),
      lastStopTime: (map['lastStopTime'] as String).input(),
      lastUpdateResult: (map['lastUpdateResult'] as String).input(),
      machineName: (map['machineName'] as String).input(),
      maxConcurrentJobs: (map['maxConcurrentJobs'] as int).input(),
      nodeName: (map['nodeName'] as String).input(),
      registerTime: (map['registerTime'] as String).input(),
      status: (map['status'] as String).input(),
      version: (map['version'] as String).input(),
      versionStatus: (map['versionStatus'] as String).input(),
    );
  }
}

