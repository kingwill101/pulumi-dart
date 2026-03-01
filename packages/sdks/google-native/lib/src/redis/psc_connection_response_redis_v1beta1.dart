// ignore_for_file: unused_element, unnecessary_cast


/// Details of consumer resources in a PSC connection.
class PscConnectionResponseRedisV1beta1 {
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final String address;
  /// The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final String forwardingRule;
  /// The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  final String network;
  /// The consumer project_id where the forwarding rule is created from.
  final String project;
  /// The PSC connection id of the forwarding rule connected to the service attachment.
  final String pscConnectionId;

  /// Creates a new [PscConnectionResponseRedisV1beta1].
  /// [address] The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  /// [project] The consumer project_id where the forwarding rule is created from.
  /// [pscConnectionId] The PSC connection id of the forwarding rule connected to the service attachment.
  PscConnectionResponseRedisV1beta1({
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

  factory PscConnectionResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return PscConnectionResponseRedisV1beta1(
      address: map['address'] as String,
      forwardingRule: map['forwardingRule'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
    );
  }
}

