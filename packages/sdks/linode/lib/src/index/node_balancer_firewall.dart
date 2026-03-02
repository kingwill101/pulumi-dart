// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_firewall_inbound.dart';
import 'node_balancer_firewall_outbound.dart';

class NodeBalancerFirewall {
  /// When this firewall was created.
  final pulumi.Input<String> created;
  /// (Required) The Firewall's ID.
  final pulumi.Input<int> id;
  /// The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  final pulumi.Input<String> inboundPolicy;
  final pulumi.Input<List<NodeBalancerFirewallInbound>> inbounds;
  /// The label of the Linode NodeBalancer
  final pulumi.Input<String> label;
  /// The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  final pulumi.Input<String> outboundPolicy;
  final pulumi.Input<List<NodeBalancerFirewallOutbound>> outbounds;
  /// The status of the firewall. (`enabled`, `disabled`, `deleted`)
  final pulumi.Input<String> status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// When this firewall was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [NodeBalancerFirewall].
  /// [created] When this firewall was created.
  /// [id] (Required) The Firewall's ID.
  /// [inboundPolicy] The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  /// [inbounds] Required.
  /// [label] The label of the Linode NodeBalancer
  /// [outboundPolicy] The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  /// [outbounds] Required.
  /// [status] The status of the firewall. (`enabled`, `disabled`, `deleted`)
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated.
  NodeBalancerFirewall({
    required this.created,
    required this.id,
    required this.inboundPolicy,
    required this.inbounds,
    required this.label,
    required this.outboundPolicy,
    required this.outbounds,
    required this.status,
    required this.tags,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.mapInputValue<List<NodeBalancerFirewallInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<NodeBalancerFirewallInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.mapInputValue<List<NodeBalancerFirewallOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<NodeBalancerFirewallOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory NodeBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return NodeBalancerFirewall(
      created: (map['created'] as String).input(),
      id: (map['id'] as int).input(),
      inboundPolicy: (map['inboundPolicy'] as String).input(),
      inbounds: (pulumi.Input.decodeList<NodeBalancerFirewallInbound>(map['inbounds'], (value) => NodeBalancerFirewallInbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      label: (map['label'] as String).input(),
      outboundPolicy: (map['outboundPolicy'] as String).input(),
      outbounds: (pulumi.Input.decodeList<NodeBalancerFirewallOutbound>(map['outbounds'], (value) => NodeBalancerFirewallOutbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      updated: (map['updated'] as String).input(),
    );
  }
}

