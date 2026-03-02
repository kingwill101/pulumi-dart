// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePscAutoConnection {
  /// (Output)
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final pulumi.Input<String>? connectionType;
  /// (Output)
  /// Output only. The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final pulumi.Input<String>? forwardingRule;
  /// (Output)
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String>? ipAddress;
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String>? network;
  /// (Output)
  /// Output only. Ports of the exposed endpoint.
  final pulumi.Input<int>? port;
  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final pulumi.Input<String>? projectId;
  /// (Output)
  /// Output only. The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final pulumi.Input<String>? pscConnectionId;
  /// (Output)
  /// Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// Possible values:
  /// ACTIVE
  /// NOT_FOUND
  final pulumi.Input<String>? pscConnectionStatus;
  /// (Output)
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [InstancePscAutoConnection].
  /// [connectionType] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] (Output)
  /// [port] (Output)
  /// [projectId] (Output)
  /// [pscConnectionId] (Output)
  /// [pscConnectionStatus] (Output)
  /// [serviceAttachment] (Output)
  InstancePscAutoConnection({
    this.connectionType,
    this.forwardingRule,
    this.ipAddress,
    this.network,
    this.port,
    this.projectId,
    this.pscConnectionId,
    this.pscConnectionStatus,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'forwardingRule': ?forwardingRule,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'port': ?port,
      'projectId': ?projectId,
      'pscConnectionId': ?pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory InstancePscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstancePscAutoConnection(
      connectionType: map['connectionType'] == null ? null : (map['connectionType']! as String).input(),
      forwardingRule: map['forwardingRule'] == null ? null : (map['forwardingRule']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      pscConnectionId: map['pscConnectionId'] == null ? null : (map['pscConnectionId']! as String).input(),
      pscConnectionStatus: map['pscConnectionStatus'] == null ? null : (map['pscConnectionStatus']! as String).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment']! as String).input(),
    );
  }
}

