// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancePscAutoConnection {
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final pulumi.Input<String> connectionType;
  /// Output only. The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final pulumi.Input<String> forwardingRule;
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String> ipAddress;
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// Output only. Ports of the exposed endpoint.
  final pulumi.Input<int> port;
  /// Output only. The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String> projectId;
  /// Output only. The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final pulumi.Input<String> pscConnectionId;
  /// Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// Possible values:
  /// ACTIVE
  /// NOT_FOUND
  final pulumi.Input<String> pscConnectionStatus;
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetInstancePscAutoConnection].
  /// [connectionType] Output Only. Type of a PSC Connection.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule.
  /// [ipAddress] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [network] Output only. The consumer network where the IP address resides, in the form of
  /// [port] Output only. Ports of the exposed endpoint.
  /// [projectId] Output only. The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the
  /// [pscConnectionStatus] Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// [serviceAttachment] Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  const GetInstancePscAutoConnection({
    required this.connectionType,
    required this.forwardingRule,
    required this.ipAddress,
    required this.network,
    required this.port,
    required this.projectId,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'forwardingRule': forwardingRule,
      'ipAddress': ipAddress,
      'network': network,
      'port': port,
      'projectId': projectId,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetInstancePscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetInstancePscAutoConnection(
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      pscConnectionStatus: pulumi.Input.fromValue(map['pscConnectionStatus'] as String),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
