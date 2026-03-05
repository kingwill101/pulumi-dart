// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_device.dart';
import 'get_firewall_inbound.dart';
import 'get_firewall_outbound.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// When this firewall was created.
  final String created;
  final List<GetFirewallDevice> devices;
  /// If true, the firewall is inactive.
  final bool disabled;
  /// The ID of the Firewall Device.
  final int id;
  /// The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  final String inboundPolicy;
  final List<GetFirewallInbound> inbounds;
  /// The IDs of Linode interfaces assigned to this Firewall.
  final List<int> interfaces;
  /// The label of the underlying entity this device references.
  final String label;
  /// The IDs of Linodes assigned to this Firewall.
  final List<int> linodes;
  /// The IDs of NodeBalancers assigned to this Firewall.
  final List<int> nodebalancers;
  /// The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  final String outboundPolicy;
  final List<GetFirewallOutbound> outbounds;
  /// The status of the firewall. (`enabled`, `disabled`, `deleted`)
  final String status;
  /// The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// When this firewall was last updated.
  final String updated;

  /// Creates a new [GetFirewallResult].
  /// [created] When this firewall was created.
  /// [devices] Required.
  /// [disabled] If true, the firewall is inactive.
  /// [id] The ID of the Firewall Device.
  /// [inboundPolicy] The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  /// [inbounds] Required.
  /// [interfaces] The IDs of Linode interfaces assigned to this Firewall.
  /// [label] The label of the underlying entity this device references.
  /// [linodes] The IDs of Linodes assigned to this Firewall.
  /// [nodebalancers] The IDs of NodeBalancers assigned to this Firewall.
  /// [outboundPolicy] The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  /// [outbounds] Required.
  /// [status] The status of the firewall. (`enabled`, `disabled`, `deleted`)
  /// [tags] The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated.
  GetFirewallResult({
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
      'devices': pulumi.Input.encodeList<GetFirewallDevice, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'disabled': disabled,
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.encodeList<GetFirewallInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'interfaces': interfaces,
      'label': label,
      'linodes': linodes,
      'nodebalancers': nodebalancers,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<GetFirewallOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      created: map['created'] as String,
      devices: pulumi.Input.decodeList<GetFirewallDevice>(map['devices']!, (value) => GetFirewallDevice.fromMap((value as Map).cast<String, dynamic>())),
      disabled: map['disabled'] as bool,
      id: map['id'] as int,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<GetFirewallInbound>(map['inbounds']!, (value) => GetFirewallInbound.fromMap((value as Map).cast<String, dynamic>())),
      interfaces: (map['interfaces'] as List).cast<int>(),
      label: map['label'] as String,
      linodes: (map['linodes'] as List).cast<int>(),
      nodebalancers: (map['nodebalancers'] as List).cast<int>(),
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<GetFirewallOutbound>(map['outbounds']!, (value) => GetFirewallOutbound.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
    );
  }
}

