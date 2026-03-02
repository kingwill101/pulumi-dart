// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_device.dart';
import 'firewall_inbound.dart';
import 'firewall_outbound.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// When this firewall was created
  final pulumi.Input<String>? created;
  /// The devices associated with this firewall.
  final pulumi.Input<List<FirewallDevice>>? devices;
  /// If `true`, the Firewall's rules are not enforced (defaults to `false`).
  ///
  /// * `inbound` - (Optional) A firewall rule that specifies what inbound network traffic is allowed.
  final pulumi.Input<bool>? disabled;
  /// The default behavior for inbound traffic. This setting can be overridden by updating the inbound.action property of the Firewall Rule. (`ACCEPT`, `DROP`)
  ///
  /// * `outbound` - (Optional) A firewall rule that specifies what outbound network traffic is allowed.
  final pulumi.Input<String>? inboundPolicy;
  /// A firewall rule that specifies what inbound network traffic is allowed.
  final pulumi.Input<List<FirewallInbound>>? inbounds;
  /// A list of IDs of Linode Interfaces this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? interfaces;
  /// This Firewall's unique label.
  final pulumi.Input<String>? label;
  /// A list of IDs of Linodes this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? linodes;
  /// A list of IDs of NodeBalancers this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? nodebalancers;
  /// The default behavior for outbound traffic. This setting can be overridden by updating the outbound.action property for an individual Firewall Rule. (`ACCEPT`, `DROP`)
  final pulumi.Input<String>? outboundPolicy;
  /// A firewall rule that specifies what outbound network traffic is allowed.
  final pulumi.Input<List<FirewallOutbound>>? outbounds;
  /// The status of the Firewall.
  final pulumi.Input<String>? status;
  /// A list of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// When this firewall was last updated
  final pulumi.Input<String>? updated;

  /// Creates a new [FirewallState].
  /// [created] When this firewall was created
  /// [devices] The devices associated with this firewall.
  /// [disabled] If `true`, the Firewall's rules are not enforced (defaults to `false`).
  /// [inboundPolicy] The default behavior for inbound traffic. This setting can be overridden by updating the inbound.action property of the Firewall Rule. (`ACCEPT`, `DROP`)
  /// [inbounds] A firewall rule that specifies what inbound network traffic is allowed.
  /// [interfaces] A list of IDs of Linode Interfaces this Firewall should govern network traffic for.
  /// [label] This Firewall's unique label.
  /// [linodes] A list of IDs of Linodes this Firewall should govern network traffic for.
  /// [nodebalancers] A list of IDs of NodeBalancers this Firewall should govern network traffic for.
  /// [outboundPolicy] The default behavior for outbound traffic. This setting can be overridden by updating the outbound.action property for an individual Firewall Rule. (`ACCEPT`, `DROP`)
  /// [outbounds] A firewall rule that specifies what outbound network traffic is allowed.
  /// [status] The status of the Firewall.
  /// [tags] A list of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated
  FirewallState({
    this.created,
    this.devices,
    this.disabled,
    this.inboundPolicy,
    this.inbounds,
    this.interfaces,
    this.label,
    this.linodes,
    this.nodebalancers,
    this.outboundPolicy,
    this.outbounds,
    this.status,
    this.tags,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<FirewallDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<FirewallDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': ?disabled,
      'inboundPolicy': ?inboundPolicy,
      'inbounds': ?pulumi.Input.mapOptionalInputValue<List<FirewallInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<FirewallInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': ?interfaces,
      'label': ?label,
      'linodes': ?linodes,
      'nodebalancers': ?nodebalancers,
      'outboundPolicy': ?outboundPolicy,
      'outbounds': ?pulumi.Input.mapOptionalInputValue<List<FirewallOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<FirewallOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'updated': ?updated,
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      created: map['created'] == null ? null : (map['created']! as String).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<FirewallDevice>(map['devices']!, (value) => FirewallDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      inboundPolicy: map['inboundPolicy'] == null ? null : (map['inboundPolicy']! as String).input(),
      inbounds: map['inbounds'] == null ? null : (pulumi.Input.decodeList<FirewallInbound>(map['inbounds']!, (value) => FirewallInbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interfaces: map['interfaces'] == null ? null : ((map['interfaces']! as List).cast<int>()).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      linodes: map['linodes'] == null ? null : ((map['linodes']! as List).cast<int>()).input(),
      nodebalancers: map['nodebalancers'] == null ? null : ((map['nodebalancers']! as List).cast<int>()).input(),
      outboundPolicy: map['outboundPolicy'] == null ? null : (map['outboundPolicy']! as String).input(),
      outbounds: map['outbounds'] == null ? null : (pulumi.Input.decodeList<FirewallOutbound>(map['outbounds']!, (value) => FirewallOutbound.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
    );
  }
}

