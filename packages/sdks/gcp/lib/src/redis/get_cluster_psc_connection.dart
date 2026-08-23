// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterPscConnection {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final pulumi.Input<String> address;
  /// Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final pulumi.Input<String> forwardingRule;
  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// Output only. The consumer projectId where the forwarding rule is created from.
  final pulumi.Input<String> projectId;
  /// Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  final pulumi.Input<String> pscConnectionId;

  /// Creates a new [GetClusterPscConnection].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  /// [projectId] Output only. The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  const GetClusterPscConnection({
    required this.address,
    required this.forwardingRule,
    required this.network,
    required this.projectId,
    required this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'forwardingRule': forwardingRule,
      'network': network,
      'projectId': projectId,
      'pscConnectionId': pscConnectionId,
    };
  }

  factory GetClusterPscConnection.fromMap(Map<String, dynamic> map) {
    return GetClusterPscConnection(
      address: pulumi.Input.fromValue(map['address'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
    );
  }
}
