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
    this.clientConnThrottle,
    this.clientUdpSessThrottle,
    this.created,
    this.firewallId,
    this.firewalls,
    this.hostname,
    this.ipv4,
    this.ipv6,
    this.label,
    this.region,
    this.tags,
    this.transfers,
    this.updated,
    this.vpcs,
  });

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
      clientConnThrottle: (() { final guardedValue = map['clientConnThrottle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientUdpSessThrottle: (() { final guardedValue = map['clientUdpSessThrottle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firewalls: (() { final guardedValue = map['firewalls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeBalancerFirewall>(guardedValue, (value) => NodeBalancerFirewall.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transfers: (() { final guardedValue = map['transfers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeBalancerTransfer>(guardedValue, (value) => NodeBalancerTransfer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeBalancerVpc>(guardedValue, (value) => NodeBalancerVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

