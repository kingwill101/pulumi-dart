// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_firewall_device.dart';
import 'get_firewalls_firewall_inbound.dart';
import 'get_firewalls_firewall_outbound.dart';

class GetFirewallsFirewall {
  /// When this firewall was created.
  final pulumi.Input<String> created;
  /// The devices associated with this firewall.
  final pulumi.Input<List<GetFirewallsFirewallDevice>> devices;
  /// If true, the Firewall is inactive.
  final pulumi.Input<bool> disabled;
  /// The unique ID assigned to this Firewall.
  final pulumi.Input<int> id;
  /// The default behavior for inbound traffic.
  final pulumi.Input<String> inboundPolicy;
  /// A set of firewall rules that specify what inbound network traffic is allowed.
  final pulumi.Input<List<GetFirewallsFirewallInbound>> inbounds;
  /// The IDs of Linode Interfaces this firewall is applied to.
  final pulumi.Input<List<int>> interfaces;
  /// The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  final pulumi.Input<String> label;
  /// The IDs of Linodes this firewall is applied to.
  final pulumi.Input<List<int>> linodes;
  /// The IDs of NodeBalancers this firewall is applied to.
  final pulumi.Input<List<int>> nodebalancers;
  /// The default behavior for outbound traffic.
  final pulumi.Input<String> outboundPolicy;
  /// A set of firewall rules that specify what outbound network traffic is allowed.
  final pulumi.Input<List<GetFirewallsFirewallOutbound>> outbounds;
  /// The status of the firewall.
  final pulumi.Input<String> status;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// When this firewall was last updated.
  final pulumi.Input<String> updated;

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
      'devices': pulumi.Input.mapInputValue<List<GetFirewallsFirewallDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<GetFirewallsFirewallDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': disabled,
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.mapInputValue<List<GetFirewallsFirewallInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<GetFirewallsFirewallInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': interfaces,
      'label': label,
      'linodes': linodes,
      'nodebalancers': nodebalancers,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.mapInputValue<List<GetFirewallsFirewallOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<GetFirewallsFirewallOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewall(
      created: pulumi.Input.fromValue(map['created'] as String),
      devices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallsFirewallDevice>(map['devices']!, (value) => GetFirewallsFirewallDevice.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      inboundPolicy: pulumi.Input.fromValue(map['inboundPolicy'] as String),
      inbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallsFirewallInbound>(map['inbounds']!, (value) => GetFirewallsFirewallInbound.fromMap((value as Map).cast<String, dynamic>()))),
      interfaces: pulumi.Input.fromValue((map['interfaces'] as List).cast<int>()),
      label: pulumi.Input.fromValue(map['label'] as String),
      linodes: pulumi.Input.fromValue((map['linodes'] as List).cast<int>()),
      nodebalancers: pulumi.Input.fromValue((map['nodebalancers'] as List).cast<int>()),
      outboundPolicy: pulumi.Input.fromValue(map['outboundPolicy'] as String),
      outbounds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallsFirewallOutbound>(map['outbounds']!, (value) => GetFirewallsFirewallOutbound.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}

