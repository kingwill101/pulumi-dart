// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection {
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
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String> ipAddress;
  /// The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// The consumer project_id where the forwarding rule is created from.
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

  /// Creates a new [InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection].
  /// [connectionType] (Output)
  /// [forwardingRule] The URI of the consumer side forwarding rule.
  /// [ipAddress] The IP allocated on the consumer network for the PSC forwarding rule.
  /// [network] The consumer network where the IP address resides, in the form of
  /// [projectId] The consumer project_id where the forwarding rule is created from.
  /// [pscConnectionId] The PSC connection id of the forwarding rule connected to the
  /// [pscConnectionStatus] (Output)
  /// [serviceAttachment] The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection({
    this.connectionType,
    required this.forwardingRule,
    required this.ipAddress,
    required this.network,
    this.projectId,
    required this.pscConnectionId,
    this.pscConnectionStatus,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'forwardingRule': forwardingRule,
      'ipAddress': ipAddress,
      'network': network,
      'projectId': ?projectId,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection(
      connectionType: map['connectionType'] == null ? null : (map['connectionType']! as String).input(),
      forwardingRule: (map['forwardingRule'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      network: (map['network'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      pscConnectionId: (map['pscConnectionId'] as String).input(),
      pscConnectionStatus: map['pscConnectionStatus'] == null ? null : (map['pscConnectionStatus']! as String).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}

