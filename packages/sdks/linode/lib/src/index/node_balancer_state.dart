// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_firewall.dart';
import 'node_balancer_transfer.dart';
import 'node_balancer_vpc.dart';

/// Input properties used for looking up and filtering NodeBalancer resources.
class NodeBalancerState {
  /// Throttle connections per second (0-20). Set to 0 (default) to disable throttling.
  final pulumi.Input<int>? clientConnThrottle;
  /// Throttle UDP sessions per second (0-20). Set to 0 (default) to disable throttling.
  ///
  /// * **NOTE: This argument may not be generally available.**
  final pulumi.Input<int>? clientUdpSessThrottle;
  /// When this firewall was created.
  final pulumi.Input<String>? created;
  /// ID for the firewall you'd like to use with this NodeBalancer.
  final pulumi.Input<int>? firewallId;
  /// A list of Firewalls assigned to this NodeBalancer.
  final pulumi.Input<List<NodeBalancerFirewall>>? firewalls;
  /// This NodeBalancer's hostname, ending with .nodebalancer.linode.com
  final pulumi.Input<String>? hostname;
  /// A list of IPv4 addresses or networks. Must be in IP/mask format.
  final pulumi.Input<String>? ipv4;
  /// A list of IPv6 addresses or networks. Must be in IP/mask format.
  final pulumi.Input<String>? ipv6;
  /// The label of the Linode NodeBalancer
  final pulumi.Input<String>? label;
  /// The region where this NodeBalancer will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).  *Changing `region` forces the creation of a new Linode NodeBalancer.*.
  ///
  /// - - -
  final pulumi.Input<String>? region;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// Information about the amount of transfer this NodeBalancer has had so far this month.
  final pulumi.Input<List<NodeBalancerTransfer>>? transfers;
  /// When this firewall was last updated.
  final pulumi.Input<String>? updated;
  /// A list of VPCs to be assigned to this NodeBalancer.
  final pulumi.Input<List<NodeBalancerVpc>>? vpcs;

  /// Creates a new [NodeBalancerState].
  /// [clientConnThrottle] Throttle connections per second (0-20). Set to 0 (default) to disable throttling.
  /// [clientUdpSessThrottle] Throttle UDP sessions per second (0-20). Set to 0 (default) to disable throttling.
  /// [created] When this firewall was created.
  /// [firewallId] ID for the firewall you'd like to use with this NodeBalancer.
  /// [firewalls] A list of Firewalls assigned to this NodeBalancer.
  /// [hostname] This NodeBalancer's hostname, ending with .nodebalancer.linode.com
  /// [ipv4] A list of IPv4 addresses or networks. Must be in IP/mask format.
  /// [ipv6] A list of IPv6 addresses or networks. Must be in IP/mask format.
  /// [label] The label of the Linode NodeBalancer
  /// [region] The region where this NodeBalancer will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).  *Changing `region` forces the creation of a new Linode NodeBalancer.*.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [transfers] Information about the amount of transfer this NodeBalancer has had so far this month.
  /// [updated] When this firewall was last updated.
  /// [vpcs] A list of VPCs to be assigned to this NodeBalancer.
  NodeBalancerState({
    pulumi.Output<int>? clientConnThrottle,
    pulumi.Output<int>? clientUdpSessThrottle,
    pulumi.Output<String>? created,
    pulumi.Output<int>? firewallId,
    pulumi.Output<List<NodeBalancerFirewall>>? firewalls,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? ipv4,
    pulumi.Output<String>? ipv6,
    pulumi.Output<String>? label,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<NodeBalancerTransfer>>? transfers,
    pulumi.Output<String>? updated,
    pulumi.Output<List<NodeBalancerVpc>>? vpcs,
  }) :
      clientConnThrottle = pulumi.Input.asOptionalInput<int>(clientConnThrottle),
      clientUdpSessThrottle = pulumi.Input.asOptionalInput<int>(clientUdpSessThrottle),
      created = pulumi.Input.asOptionalInput<String>(created),
      firewallId = pulumi.Input.asOptionalInput<int>(firewallId),
      firewalls = pulumi.Input.asOptionalInput<List<NodeBalancerFirewall>>(firewalls),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      ipv4 = pulumi.Input.asOptionalInput<String>(ipv4),
      ipv6 = pulumi.Input.asOptionalInput<String>(ipv6),
      label = pulumi.Input.asOptionalInput<String>(label),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      transfers = pulumi.Input.asOptionalInput<List<NodeBalancerTransfer>>(transfers),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      vpcs = pulumi.Input.asOptionalInput<List<NodeBalancerVpc>>(vpcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnThrottle': ?clientConnThrottle,
      'clientUdpSessThrottle': ?clientUdpSessThrottle,
      'created': ?created,
      'firewallId': ?firewallId,
      'firewalls': ?pulumi.Input.mapOptionalInputValue<List<NodeBalancerFirewall>, List<Map<String, dynamic>>>(firewalls, (value) => pulumi.Input.encodeList<NodeBalancerFirewall, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'label': ?label,
      'region': ?region,
      'tags': ?tags,
      'transfers': ?pulumi.Input.mapOptionalInputValue<List<NodeBalancerTransfer>, List<Map<String, dynamic>>>(transfers, (value) => pulumi.Input.encodeList<NodeBalancerTransfer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updated': ?updated,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<NodeBalancerVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<NodeBalancerVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeBalancerState.fromMap(Map<String, dynamic> map) {
    return NodeBalancerState(
      clientConnThrottle: map['clientConnThrottle'] == null ? null : pulumi.Output.create<int>(map['clientConnThrottle'] as int),
      clientUdpSessThrottle: map['clientUdpSessThrottle'] == null ? null : pulumi.Output.create<int>(map['clientUdpSessThrottle'] as int),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      firewallId: map['firewallId'] == null ? null : pulumi.Output.create<int>(map['firewallId'] as int),
      firewalls: map['firewalls'] == null ? null : pulumi.Output.create<List<NodeBalancerFirewall>>(pulumi.Input.decodeList<NodeBalancerFirewall>(map['firewalls'], (value) => NodeBalancerFirewall.fromMap((value as Map).cast<String, dynamic>()))),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      ipv4: map['ipv4'] == null ? null : pulumi.Output.create<String>(map['ipv4'] as String),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<String>(map['ipv6'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      transfers: map['transfers'] == null ? null : pulumi.Output.create<List<NodeBalancerTransfer>>(pulumi.Input.decodeList<NodeBalancerTransfer>(map['transfers'], (value) => NodeBalancerTransfer.fromMap((value as Map).cast<String, dynamic>()))),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      vpcs: map['vpcs'] == null ? null : pulumi.Output.create<List<NodeBalancerVpc>>(pulumi.Input.decodeList<NodeBalancerVpc>(map['vpcs'], (value) => NodeBalancerVpc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

