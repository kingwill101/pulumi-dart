// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_balancer_firewall_inbound.dart';
import 'get_node_balancer_firewall_outbound.dart';

class GetNodeBalancerFirewall {
  /// When this firewall was created.
  final pulumi.Input<String> created;
  /// The NodeBalancer's ID.
  final pulumi.Input<int> id;
  /// The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  final pulumi.Input<String> inboundPolicy;
  /// A set of firewall rules that specify what inbound network traffic is allowed.
  final pulumi.Input<List<GetNodeBalancerFirewallInbound>> inbounds;
  /// Used to identify this rule. For display purposes only.
  final pulumi.Input<String> label;
  /// The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  final pulumi.Input<String> outboundPolicy;
  /// A set of firewall rules that specify what outbound network traffic is allowed.
  final pulumi.Input<List<GetNodeBalancerFirewallOutbound>> outbounds;
  /// The status of the firewall. (`enabled`, `disabled`, `deleted`)
  final pulumi.Input<String> status;
  /// The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// When this firewall was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetNodeBalancerFirewall].
  /// [created] When this firewall was created.
  /// [id] The NodeBalancer's ID.
  /// [inboundPolicy] The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  /// [inbounds] A set of firewall rules that specify what inbound network traffic is allowed.
  /// [label] Used to identify this rule. For display purposes only.
  /// [outboundPolicy] The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  /// [outbounds] A set of firewall rules that specify what outbound network traffic is allowed.
  /// [status] The status of the firewall. (`enabled`, `disabled`, `deleted`)
  /// [tags] The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated.
  GetNodeBalancerFirewall({
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
      'inbounds': pulumi.Input.mapInputValue<List<GetNodeBalancerFirewallInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<GetNodeBalancerFirewallInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.mapInputValue<List<GetNodeBalancerFirewallOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<GetNodeBalancerFirewallOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetNodeBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerFirewall(
      created: (map['created'] as String).input(),
      id: (map['id'] as int).input(),
      inboundPolicy: (map['inboundPolicy'] as String).input(),
      inbounds: (pulumi.Input.decodeList<GetNodeBalancerFirewallInbound>(map['inbounds'], (value) => GetNodeBalancerFirewallInbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      label: (map['label'] as String).input(),
      outboundPolicy: (map['outboundPolicy'] as String).input(),
      outbounds: (pulumi.Input.decodeList<GetNodeBalancerFirewallOutbound>(map['outbounds'], (value) => GetNodeBalancerFirewallOutbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      updated: (map['updated'] as String).input(),
    );
  }
}

