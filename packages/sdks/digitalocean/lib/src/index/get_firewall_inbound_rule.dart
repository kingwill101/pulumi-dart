// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallInboundRule {
  /// The ports on which traffic will be allowed
  /// specified as a string containing a single port, a range (e.g. "8000-9000"),
  /// or "1-65535" to open all ports for a protocol. Required for when protocol is
  /// `tcp` or `udp`.
  final pulumi.Input<String>? portRange;
  /// The type of traffic to be allowed.
  /// This may be one of "tcp", "udp", or "icmp".
  final pulumi.Input<String> protocol;
  /// An array of strings containing the IPv4
  /// addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs from which the
  /// inbound traffic will be accepted.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// An array containing the IDs of
  /// the Droplets from which the inbound traffic will be accepted.
  final pulumi.Input<List<int>>? sourceDropletIds;
  final pulumi.Input<List<String>>? sourceKubernetesIds;
  /// An array containing the IDs
  /// of the Load Balancers from which the inbound traffic will be accepted.
  final pulumi.Input<List<String>>? sourceLoadBalancerUids;
  /// A set of names of Tags corresponding to group of
  /// Droplets from which the inbound traffic will be accepted.
  final pulumi.Input<List<String>>? sourceTags;

  /// Creates a new [GetFirewallInboundRule].
  /// [portRange] The ports on which traffic will be allowed
  /// [protocol] The type of traffic to be allowed.
  /// [sourceAddresses] An array of strings containing the IPv4
  /// [sourceDropletIds] An array containing the IDs of
  /// [sourceKubernetesIds] Optional.
  /// [sourceLoadBalancerUids] An array containing the IDs
  /// [sourceTags] A set of names of Tags corresponding to group of
  const GetFirewallInboundRule({
    this.portRange,
    required this.protocol,
    this.sourceAddresses,
    this.sourceDropletIds,
    this.sourceKubernetesIds,
    this.sourceLoadBalancerUids,
    this.sourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portRange': ?portRange,
      'protocol': protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourceDropletIds': ?sourceDropletIds,
      'sourceKubernetesIds': ?sourceKubernetesIds,
      'sourceLoadBalancerUids': ?sourceLoadBalancerUids,
      'sourceTags': ?sourceTags,
    };
  }

  factory GetFirewallInboundRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallInboundRule(
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDropletIds: (() { final guardedValue = map['sourceDropletIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      sourceKubernetesIds: (() { final guardedValue = map['sourceKubernetesIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceLoadBalancerUids: (() { final guardedValue = map['sourceLoadBalancerUids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceTags: (() { final guardedValue = map['sourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

