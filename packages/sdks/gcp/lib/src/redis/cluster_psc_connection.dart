// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPscConnection {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String>? address;
  /// Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final pulumi.Input<String>? forwardingRule;
  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final pulumi.Input<String>? network;
  /// Output only. The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String>? projectId;
  /// Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  final pulumi.Input<String>? pscConnectionId;

  /// Creates a new [ClusterPscConnection].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  /// [projectId] Output only. The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  ClusterPscConnection({
    this.address,
    this.forwardingRule,
    this.network,
    this.projectId,
    this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'forwardingRule': ?forwardingRule,
      'network': ?network,
      'projectId': ?projectId,
      'pscConnectionId': ?pscConnectionId,
    };
  }

  factory ClusterPscConnection.fromMap(Map<String, dynamic> map) {
    return ClusterPscConnection(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      forwardingRule: map['forwardingRule'] == null ? null : (map['forwardingRule'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      pscConnectionId: map['pscConnectionId'] == null ? null : (map['pscConnectionId'] as String).input(),
    );
  }
}

