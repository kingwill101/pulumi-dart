// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_balancer_firewall.dart';
import 'get_node_balancer_transfer.dart';
import 'get_node_balancer_vpc.dart';

/// Result data returned by getNodeBalancer.
class GetNodeBalancerResult {
  /// Throttle connections per second (0-20).
  final int clientConnThrottle;
  /// Throttle UDP sessions per second (0-20).
  final int clientUdpSessThrottle;
  /// When this firewall was created.
  final String created;
  final List<GetNodeBalancerFirewall> firewalls;
  /// This NodeBalancer's hostname, ending with .ip.linodeusercontent.com
  final String hostname;
  /// The Firewall's ID.
  final int id;
  /// A list of IPv4 addresses or networks. Must be in IP/mask format.
  final String ipv4;
  /// A list of IPv6 addresses or networks. Must be in IP/mask format.
  final String ipv6;
  /// Used to identify this rule. For display purposes only.
  final String label;
  /// The Region where this Linode NodeBalancer is located. NodeBalancers only support backends in the same Region.
  final String region;
  /// The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  final List<GetNodeBalancerTransfer> transfers;
  /// When this firewall was last updated.
  final String updated;
  final List<GetNodeBalancerVpc> vpcs;

  /// Creates a new [GetNodeBalancerResult].
  /// [clientConnThrottle] Throttle connections per second (0-20).
  /// [clientUdpSessThrottle] Throttle UDP sessions per second (0-20).
  /// [created] When this firewall was created.
  /// [firewalls] Required.
  /// [hostname] This NodeBalancer's hostname, ending with .ip.linodeusercontent.com
  /// [id] The Firewall's ID.
  /// [ipv4] A list of IPv4 addresses or networks. Must be in IP/mask format.
  /// [ipv6] A list of IPv6 addresses or networks. Must be in IP/mask format.
  /// [label] Used to identify this rule. For display purposes only.
  /// [region] The Region where this Linode NodeBalancer is located. NodeBalancers only support backends in the same Region.
  /// [tags] The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  /// [transfers] Required.
  /// [updated] When this firewall was last updated.
  /// [vpcs] Required.
  const GetNodeBalancerResult({
    required this.clientConnThrottle,
    required this.clientUdpSessThrottle,
    required this.created,
    required this.firewalls,
    required this.hostname,
    required this.id,
    required this.ipv4,
    required this.ipv6,
    required this.label,
    required this.region,
    required this.tags,
    required this.transfers,
    required this.updated,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnThrottle': clientConnThrottle,
      'clientUdpSessThrottle': clientUdpSessThrottle,
      'created': created,
      'firewalls': pulumi.Input.encodeList<GetNodeBalancerFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'hostname': hostname,
      'id': id,
      'ipv4': ipv4,
      'ipv6': ipv6,
      'label': label,
      'region': region,
      'tags': tags,
      'transfers': pulumi.Input.encodeList<GetNodeBalancerTransfer, Map<String, dynamic>>(transfers, (value) => value.toMap()),
      'updated': updated,
      'vpcs': pulumi.Input.encodeList<GetNodeBalancerVpc, Map<String, dynamic>>(vpcs, (value) => value.toMap()),
    };
  }

  factory GetNodeBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerResult(
      clientConnThrottle: map['clientConnThrottle'] as int,
      clientUdpSessThrottle: map['clientUdpSessThrottle'] as int,
      created: map['created'] as String,
      firewalls: pulumi.Input.decodeList<GetNodeBalancerFirewall>(map['firewalls']!, (value) => GetNodeBalancerFirewall.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] as String,
      id: map['id'] as int,
      ipv4: map['ipv4'] as String,
      ipv6: map['ipv6'] as String,
      label: map['label'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as List).cast<String>(),
      transfers: pulumi.Input.decodeList<GetNodeBalancerTransfer>(map['transfers']!, (value) => GetNodeBalancerTransfer.fromMap((value as Map).cast<String, dynamic>())),
      updated: map['updated'] as String,
      vpcs: pulumi.Input.decodeList<GetNodeBalancerVpc>(map['vpcs']!, (value) => GetNodeBalancerVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

