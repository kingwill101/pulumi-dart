// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_firewall_inbound.dart';
import 'node_balancer_firewall_outbound.dart';

class NodeBalancerFirewall {
  /// When this firewall was created.
  final String created;
  /// (Required) The Firewall's ID.
  final int id;
  /// The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  final String inboundPolicy;
  final List<NodeBalancerFirewallInbound> inbounds;
  /// The label of the Linode NodeBalancer
  final String label;
  /// The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  final String outboundPolicy;
  final List<NodeBalancerFirewallOutbound> outbounds;
  /// The status of the firewall. (`enabled`, `disabled`, `deleted`)
  final String status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// When this firewall was last updated.
  final String updated;

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
      'inbounds': pulumi.Input.encodeList<NodeBalancerFirewallInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'label': label,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<NodeBalancerFirewallOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory NodeBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return NodeBalancerFirewall(
      created: map['created'] as String,
      id: map['id'] as int,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<NodeBalancerFirewallInbound>(map['inbounds'], (value) => NodeBalancerFirewallInbound.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<NodeBalancerFirewallOutbound>(map['outbounds'], (value) => NodeBalancerFirewallOutbound.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
    );
  }
}

