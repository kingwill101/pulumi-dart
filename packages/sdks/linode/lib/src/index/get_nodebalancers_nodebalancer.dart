// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancers_nodebalancer_transfer.dart';

class GetNodebalancersNodebalancer {
  /// Throttle connections per second (0-20)
  final int clientConnThrottle;
  /// Throttle UDP sessions per second (0-20).
  final int clientUdpSessThrottle;
  /// When this Linode NodeBalancer was created
  final String created;
  /// This NodeBalancer's hostname, ending with .ip.linodeusercontent.com
  final String hostname;
  /// The Linode NodeBalancer's unique ID
  final int id;
  /// The Public IPv4 Address of this NodeBalancer
  final String ipv4;
  /// The Public IPv6 Address of this NodeBalancer
  final String ipv6;
  /// The label of the Linode NodeBalancer
  final String label;
  /// The Region where this Linode NodeBalancer is located. NodeBalancers only support backends in the same Region.
  final String region;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// Information about the amount of transfer this NodeBalancer has had so far this month.
  final List<GetNodebalancersNodebalancerTransfer> transfers;
  /// When this Linode NodeBalancer was last updated
  final String updated;

  /// Creates a new [GetNodebalancersNodebalancer].
  /// [clientConnThrottle] Throttle connections per second (0-20)
  /// [clientUdpSessThrottle] Throttle UDP sessions per second (0-20).
  /// [created] When this Linode NodeBalancer was created
  /// [hostname] This NodeBalancer's hostname, ending with .ip.linodeusercontent.com
  /// [id] The Linode NodeBalancer's unique ID
  /// [ipv4] The Public IPv4 Address of this NodeBalancer
  /// [ipv6] The Public IPv6 Address of this NodeBalancer
  /// [label] The label of the Linode NodeBalancer
  /// [region] The Region where this Linode NodeBalancer is located. NodeBalancers only support backends in the same Region.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [transfers] Information about the amount of transfer this NodeBalancer has had so far this month.
  /// [updated] When this Linode NodeBalancer was last updated
  GetNodebalancersNodebalancer({
    required this.clientConnThrottle,
    required this.clientUdpSessThrottle,
    required this.created,
    required this.hostname,
    required this.id,
    required this.ipv4,
    required this.ipv6,
    required this.label,
    required this.region,
    required this.tags,
    required this.transfers,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConnThrottle': clientConnThrottle,
      'clientUdpSessThrottle': clientUdpSessThrottle,
      'created': created,
      'hostname': hostname,
      'id': id,
      'ipv4': ipv4,
      'ipv6': ipv6,
      'label': label,
      'region': region,
      'tags': tags,
      'transfers': pulumi.Input.encodeList<GetNodebalancersNodebalancerTransfer, Map<String, dynamic>>(transfers, (value) => value.toMap()),
      'updated': updated,
    };
  }

  factory GetNodebalancersNodebalancer.fromMap(Map<String, dynamic> map) {
    return GetNodebalancersNodebalancer(
      clientConnThrottle: map['clientConnThrottle'] as int,
      clientUdpSessThrottle: map['clientUdpSessThrottle'] as int,
      created: map['created'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as int,
      ipv4: map['ipv4'] as String,
      ipv6: map['ipv6'] as String,
      label: map['label'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as List).cast<String>(),
      transfers: pulumi.Input.decodeList<GetNodebalancersNodebalancerTransfer>(map['transfers'], (value) => GetNodebalancersNodebalancerTransfer.fromMap((value as Map).cast<String, dynamic>())),
      updated: map['updated'] as String,
    );
  }
}

