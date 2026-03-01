// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_firewall_device.dart';
import 'get_firewalls_firewall_inbound.dart';
import 'get_firewalls_firewall_outbound.dart';

class GetFirewallsFirewall {
  /// When this firewall was created.
  final String created;
  /// The devices associated with this firewall.
  final List<GetFirewallsFirewallDevice> devices;
  /// If true, the Firewall is inactive.
  final bool disabled;
  /// The unique ID assigned to this Firewall.
  final int id;
  /// The default behavior for inbound traffic.
  final String inboundPolicy;
  /// A set of firewall rules that specify what inbound network traffic is allowed.
  final List<GetFirewallsFirewallInbound> inbounds;
  /// The IDs of Linode Interfaces this firewall is applied to.
  final List<int> interfaces;
  /// The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  final String label;
  /// The IDs of Linodes this firewall is applied to.
  final List<int> linodes;
  /// The IDs of NodeBalancers this firewall is applied to.
  final List<int> nodebalancers;
  /// The default behavior for outbound traffic.
  final String outboundPolicy;
  /// A set of firewall rules that specify what outbound network traffic is allowed.
  final List<GetFirewallsFirewallOutbound> outbounds;
  /// The status of the firewall.
  final String status;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// When this firewall was last updated.
  final String updated;

  /// Creates a new [GetFirewallsFirewall].
  /// [created] When this firewall was created.
  /// [devices] The devices associated with this firewall.
  /// [disabled] If true, the Firewall is inactive.
  /// [id] The unique ID assigned to this Firewall.
  /// [inboundPolicy] The default behavior for inbound traffic.
  /// [inbounds] A set of firewall rules that specify what inbound network traffic is allowed.
  /// [interfaces] The IDs of Linode Interfaces this firewall is applied to.
  /// [label] The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  /// [linodes] The IDs of Linodes this firewall is applied to.
  /// [nodebalancers] The IDs of NodeBalancers this firewall is applied to.
  /// [outboundPolicy] The default behavior for outbound traffic.
  /// [outbounds] A set of firewall rules that specify what outbound network traffic is allowed.
  /// [status] The status of the firewall.
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated.
  GetFirewallsFirewall({
    required this.created,
    required this.devices,
    required this.disabled,
    required this.id,
    required this.inboundPolicy,
    required this.inbounds,
    required this.interfaces,
    required this.label,
    required this.linodes,
    required this.nodebalancers,
    required this.outboundPolicy,
    required this.outbounds,
    required this.status,
    required this.tags,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'devices': pulumi.Input.encodeList<GetFirewallsFirewallDevice, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'disabled': disabled,
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.encodeList<GetFirewallsFirewallInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'interfaces': interfaces,
      'label': label,
      'linodes': linodes,
      'nodebalancers': nodebalancers,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<GetFirewallsFirewallOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewall(
      created: map['created'] as String,
      devices: pulumi.Input.decodeList<GetFirewallsFirewallDevice>(map['devices'], (value) => GetFirewallsFirewallDevice.fromMap((value as Map).cast<String, dynamic>())),
      disabled: map['disabled'] as bool,
      id: map['id'] as int,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<GetFirewallsFirewallInbound>(map['inbounds'], (value) => GetFirewallsFirewallInbound.fromMap((value as Map).cast<String, dynamic>())),
      interfaces: (map['interfaces'] as List).cast<int>(),
      label: map['label'] as String,
      linodes: (map['linodes'] as List).cast<int>(),
      nodebalancers: (map['nodebalancers'] as List).cast<int>(),
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<GetFirewallsFirewallOutbound>(map['outbounds'], (value) => GetFirewallsFirewallOutbound.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
    );
  }
}

