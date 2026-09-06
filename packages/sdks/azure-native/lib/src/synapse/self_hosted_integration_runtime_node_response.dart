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
  const SelfHostedIntegrationRuntimeNodeResponse({
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
      capabilities: pulumi.Input.fromValue((map['capabilities'] as Map).cast<String, String>()),
      concurrentJobsLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['concurrentJobsLimit'])),
      expiryTime: pulumi.Input.fromValue(map['expiryTime'] as String),
      hostServiceUri: pulumi.Input.fromValue(map['hostServiceUri'] as String),
      isActiveDispatcher: pulumi.Input.fromValue(map['isActiveDispatcher'] as bool),
      lastConnectTime: pulumi.Input.fromValue(map['lastConnectTime'] as String),
      lastEndUpdateTime: pulumi.Input.fromValue(map['lastEndUpdateTime'] as String),
      lastStartTime: pulumi.Input.fromValue(map['lastStartTime'] as String),
      lastStartUpdateTime: pulumi.Input.fromValue(map['lastStartUpdateTime'] as String),
      lastStopTime: pulumi.Input.fromValue(map['lastStopTime'] as String),
      lastUpdateResult: pulumi.Input.fromValue(map['lastUpdateResult'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      maxConcurrentJobs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxConcurrentJobs'])),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      registerTime: pulumi.Input.fromValue(map['registerTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
      versionStatus: pulumi.Input.fromValue(map['versionStatus'] as String),
    );
  }
}
