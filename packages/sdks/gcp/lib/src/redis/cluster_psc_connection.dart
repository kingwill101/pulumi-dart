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
  const ClusterPscConnection({
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
