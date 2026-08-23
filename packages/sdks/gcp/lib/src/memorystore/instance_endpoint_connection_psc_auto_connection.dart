// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEndpointConnectionPscAutoConnection {
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
  /// Output only. The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String>? projectId;
  /// (Output)
  /// Output only. The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final pulumi.Input<String>? pscConnectionId;
  /// (Output)
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [InstanceEndpointConnectionPscAutoConnection].
  /// [connectionType] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] (Output)
  /// [port] (Output)
  /// [projectId] (Output)
  /// [pscConnectionId] (Output)
  /// [serviceAttachment] (Output)
  const InstanceEndpointConnectionPscAutoConnection({
    this.connectionType,
    this.forwardingRule,
    this.ipAddress,
    this.network,
    this.port,
    this.projectId,
    this.pscConnectionId,
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
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory InstanceEndpointConnectionPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstanceEndpointConnectionPscAutoConnection(
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
