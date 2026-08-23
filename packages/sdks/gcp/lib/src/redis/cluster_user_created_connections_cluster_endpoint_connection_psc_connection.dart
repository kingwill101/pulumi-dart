// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection {
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String> address;
  /// (Output)
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final pulumi.Input<String>? connectionType;
  /// The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final pulumi.Input<String> forwardingRule;
  /// The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String>? projectId;
  /// The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final pulumi.Input<String> pscConnectionId;
  /// (Output)
  /// Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// Possible values:
  /// ACTIVE
  /// NOT_FOUND
  final pulumi.Input<String>? pscConnectionStatus;
  /// The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection].
  /// [address] The IP allocated on the consumer network for the PSC forwarding rule.
  /// [connectionType] (Output)
  /// [forwardingRule] The URI of the consumer side forwarding rule.
  /// [network] The consumer network where the IP address resides, in the form of
  /// [projectId] The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] The PSC connection id of the forwarding rule connected to the
  /// [pscConnectionStatus] (Output)
  /// [serviceAttachment] The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  const ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection({
    required this.address,
    this.connectionType,
    required this.forwardingRule,
    required this.network,
    this.projectId,
    required this.pscConnectionId,
    this.pscConnectionStatus,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'connectionType': ?connectionType,
      'forwardingRule': forwardingRule,
      'network': network,
      'projectId': ?projectId,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection(
      address: pulumi.Input.fromValue(map['address'] as String),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      pscConnectionStatus: (() { final guardedValue = map['pscConnectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
