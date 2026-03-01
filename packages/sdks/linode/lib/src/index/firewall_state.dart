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
    pulumi.Output<String>? created,
    pulumi.Output<List<FirewallDevice>>? devices,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? inboundPolicy,
    pulumi.Output<List<FirewallInbound>>? inbounds,
    pulumi.Output<List<int>>? interfaces,
    pulumi.Output<String>? label,
    pulumi.Output<List<int>>? linodes,
    pulumi.Output<List<int>>? nodebalancers,
    pulumi.Output<String>? outboundPolicy,
    pulumi.Output<List<FirewallOutbound>>? outbounds,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? updated,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      devices = pulumi.Input.asOptionalInput<List<FirewallDevice>>(devices),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      inboundPolicy = pulumi.Input.asOptionalInput<String>(inboundPolicy),
      inbounds = pulumi.Input.asOptionalInput<List<FirewallInbound>>(inbounds),
      interfaces = pulumi.Input.asOptionalInput<List<int>>(interfaces),
      label = pulumi.Input.asOptionalInput<String>(label),
      linodes = pulumi.Input.asOptionalInput<List<int>>(linodes),
      nodebalancers = pulumi.Input.asOptionalInput<List<int>>(nodebalancers),
      outboundPolicy = pulumi.Input.asOptionalInput<String>(outboundPolicy),
      outbounds = pulumi.Input.asOptionalInput<List<FirewallOutbound>>(outbounds),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      updated = pulumi.Input.asOptionalInput<String>(updated);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      devices: map['devices'] == null ? null : pulumi.Output.create<List<FirewallDevice>>(pulumi.Input.decodeList<FirewallDevice>(map['devices'], (value) => FirewallDevice.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      inboundPolicy: map['inboundPolicy'] == null ? null : pulumi.Output.create<String>(map['inboundPolicy'] as String),
      inbounds: map['inbounds'] == null ? null : pulumi.Output.create<List<FirewallInbound>>(pulumi.Input.decodeList<FirewallInbound>(map['inbounds'], (value) => FirewallInbound.fromMap((value as Map).cast<String, dynamic>()))),
      interfaces: map['interfaces'] == null ? null : pulumi.Output.create<List<int>>((map['interfaces'] as List).cast<int>()),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      linodes: map['linodes'] == null ? null : pulumi.Output.create<List<int>>((map['linodes'] as List).cast<int>()),
      nodebalancers: map['nodebalancers'] == null ? null : pulumi.Output.create<List<int>>((map['nodebalancers'] as List).cast<int>()),
      outboundPolicy: map['outboundPolicy'] == null ? null : pulumi.Output.create<String>(map['outboundPolicy'] as String),
      outbounds: map['outbounds'] == null ? null : pulumi.Output.create<List<FirewallOutbound>>(pulumi.Input.decodeList<FirewallOutbound>(map['outbounds'], (value) => FirewallOutbound.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

