// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_response.dart';
import 'self_hosted_integration_runtime_node_response.dart';

/// Self-hosted integration runtime status.
class SelfHostedIntegrationRuntimeStatusResponse {
  /// Whether Self-hosted integration runtime auto update has been turned on.
  final pulumi.Input<String> autoUpdate;
  /// The estimated time when the self-hosted integration runtime will be updated.
  final pulumi.Input<String> autoUpdateETA;
  /// Object with additional information about integration runtime capabilities.
  final pulumi.Input<Map<String, String>> capabilities;
  /// The time at which the integration runtime was created, in ISO8601 format.
  final pulumi.Input<String> createTime;
  /// The workspace name which the integration runtime belong to.
  final pulumi.Input<String> dataFactoryName;
  /// It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  final pulumi.Input<String> internalChannelEncryption;
  /// The latest version on download center.
  final pulumi.Input<String> latestVersion;
  /// The list of linked integration runtimes that are created to share with this integration runtime.
  final pulumi.Input<List<LinkedIntegrationRuntimeResponse>>? links;
  /// The local time zone offset in hours.
  final pulumi.Input<String> localTimeZoneOffset;
  /// The node communication Channel encryption mode
  final pulumi.Input<String> nodeCommunicationChannelEncryptionMode;
  /// The list of nodes for this integration runtime.
  final pulumi.Input<List<SelfHostedIntegrationRuntimeNodeResponse>>? nodes;
  /// The version that the integration runtime is going to update to.
  final pulumi.Input<String> pushedVersion;
  /// The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  final pulumi.Input<String> scheduledUpdateDate;
  /// The URLs for the services used in integration runtime backend service.
  final pulumi.Input<List<String>> serviceUrls;
  /// The state of integration runtime.
  final pulumi.Input<String> state;
  /// The task queue id of the integration runtime.
  final pulumi.Input<String> taskQueueId;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;
  /// The time in the date scheduled by service to update the integration runtime, e.g., PT03H is 3 hours
  final pulumi.Input<String> updateDelayOffset;
  /// Version of the integration runtime.
  final pulumi.Input<String> version;
  /// Status of the integration runtime version.
  final pulumi.Input<String> versionStatus;

  /// Creates a new [SelfHostedIntegrationRuntimeStatusResponse].
  /// [autoUpdate] Whether Self-hosted integration runtime auto update has been turned on.
  /// [autoUpdateETA] The estimated time when the self-hosted integration runtime will be updated.
  /// [capabilities] Object with additional information about integration runtime capabilities.
  /// [createTime] The time at which the integration runtime was created, in ISO8601 format.
  /// [dataFactoryName] The workspace name which the integration runtime belong to.
  /// [internalChannelEncryption] It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  /// [latestVersion] The latest version on download center.
  /// [links] The list of linked integration runtimes that are created to share with this integration runtime.
  /// [localTimeZoneOffset] The local time zone offset in hours.
  /// [nodeCommunicationChannelEncryptionMode] The node communication Channel encryption mode
  /// [nodes] The list of nodes for this integration runtime.
  /// [pushedVersion] The version that the integration runtime is going to update to.
  /// [scheduledUpdateDate] The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  /// [serviceUrls] The URLs for the services used in integration runtime backend service.
  /// [state] The state of integration runtime.
  /// [taskQueueId] The task queue id of the integration runtime.
  /// [type] The type of integration runtime.
  /// [updateDelayOffset] The time in the date scheduled by service to update the integration runtime, e.g., PT03H is 3 hours
  /// [version] Version of the integration runtime.
  /// [versionStatus] Status of the integration runtime version.
  const SelfHostedIntegrationRuntimeStatusResponse({
    required this.autoUpdate,
    required this.autoUpdateETA,
    required this.capabilities,
    required this.createTime,
    required this.dataFactoryName,
    required this.internalChannelEncryption,
    required this.latestVersion,
    this.links,
    required this.localTimeZoneOffset,
    required this.nodeCommunicationChannelEncryptionMode,
    this.nodes,
    required this.pushedVersion,
    required this.scheduledUpdateDate,
    required this.serviceUrls,
    required this.state,
    required this.taskQueueId,
    required this.type,
    required this.updateDelayOffset,
    required this.version,
    required this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdate': autoUpdate,
      'autoUpdateETA': autoUpdateETA,
      'capabilities': capabilities,
      'createTime': createTime,
      'dataFactoryName': dataFactoryName,
      'internalChannelEncryption': internalChannelEncryption,
      'latestVersion': latestVersion,
      'links': ?pulumi.Input.mapOptionalInputValue<List<LinkedIntegrationRuntimeResponse>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<LinkedIntegrationRuntimeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localTimeZoneOffset': localTimeZoneOffset,
      'nodeCommunicationChannelEncryptionMode': nodeCommunicationChannelEncryptionMode,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<SelfHostedIntegrationRuntimeNodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<SelfHostedIntegrationRuntimeNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushedVersion': pushedVersion,
      'scheduledUpdateDate': scheduledUpdateDate,
      'serviceUrls': serviceUrls,
      'state': state,
      'taskQueueId': taskQueueId,
      'type': type,
      'updateDelayOffset': updateDelayOffset,
      'version': version,
      'versionStatus': versionStatus,
    };
  }

  factory SelfHostedIntegrationRuntimeStatusResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntimeStatusResponse(
      autoUpdate: pulumi.Input.fromValue(map['autoUpdate'] as String),
      autoUpdateETA: pulumi.Input.fromValue(map['autoUpdateETA'] as String),
      capabilities: pulumi.Input.fromValue((map['capabilities'] as Map).cast<String, String>()),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataFactoryName: pulumi.Input.fromValue(map['dataFactoryName'] as String),
      internalChannelEncryption: pulumi.Input.fromValue(map['internalChannelEncryption'] as String),
      latestVersion: pulumi.Input.fromValue(map['latestVersion'] as String),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedIntegrationRuntimeResponse>(guardedValue, (value) => LinkedIntegrationRuntimeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localTimeZoneOffset: pulumi.Input.fromValue(map['localTimeZoneOffset'] as String),
      nodeCommunicationChannelEncryptionMode: pulumi.Input.fromValue(map['nodeCommunicationChannelEncryptionMode'] as String),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelfHostedIntegrationRuntimeNodeResponse>(guardedValue, (value) => SelfHostedIntegrationRuntimeNodeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pushedVersion: pulumi.Input.fromValue(map['pushedVersion'] as String),
      scheduledUpdateDate: pulumi.Input.fromValue(map['scheduledUpdateDate'] as String),
      serviceUrls: pulumi.Input.fromValue((map['serviceUrls'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskQueueId: pulumi.Input.fromValue(map['taskQueueId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateDelayOffset: pulumi.Input.fromValue(map['updateDelayOffset'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
      versionStatus: pulumi.Input.fromValue(map['versionStatus'] as String),
    );
  }
}
