// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of consumer resources in a PSC connection.
class PscConnectionResponse {
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String> address;
  /// The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final pulumi.Input<String> forwardingRule;
  /// The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// The consumer project_id where the forwarding rule is created from.
  final pulumi.Input<String> project;
  /// The PSC connection id of the forwarding rule connected to the service attachment.
  final pulumi.Input<String> pscConnectionId;

  /// Creates a new [PscConnectionResponse].
  /// [address] The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  /// [project] The consumer project_id where the forwarding rule is created from.
  /// [pscConnectionId] The PSC connection id of the forwarding rule connected to the service attachment.
  const PscConnectionResponse({
    required this.address,
    required this.forwardingRule,
    required this.network,
    required this.project,
    required this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'forwardingRule': forwardingRule,
      'network': network,
      'project': project,
      'pscConnectionId': pscConnectionId,
    };
  }

  factory PscConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PscConnectionResponse(
      address: pulumi.Input.fromValue(map['address'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
    );
  }
}

