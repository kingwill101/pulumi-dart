// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallOutboundRule {
  /// An array of strings containing the IPv4
  /// addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which the
  /// outbound traffic will be allowed.
  final pulumi.Input<List<String>>? destinationAddresses;

  /// An array containing the IDs of
  /// the Droplets to which the outbound traffic will be allowed.
  final pulumi.Input<List<int>>? destinationDropletIds;

  /// An array containing the IDs of
  /// the Kubernetes clusters to which the outbound traffic will be allowed.
  final pulumi.Input<List<String>>? destinationKubernetesIds;

  /// An array containing the IDs
  /// of the Load Balancers to which the outbound traffic will be allowed.
  final pulumi.Input<List<String>>? destinationLoadBalancerUids;

  /// An array containing the names of Tags
  /// corresponding to groups of Droplets to which the outbound traffic will
  /// be allowed.
  final pulumi.Input<List<String>>? destinationTags;

  /// The ports on which traffic will be allowed
  /// specified as a string containing a single port, a range (e.g. "8000-9000"),
  /// or "1-65535" to open all ports for a protocol. Required for when protocol is
  /// `tcp` or `udp`.
  final pulumi.Input<String>? portRange;

  /// The type of traffic to be allowed.
  /// This may be one of "tcp", "udp", or "icmp".
  final pulumi.Input<String> protocol;

  /// Creates a new [FirewallOutboundRule].
  /// [destinationAddresses] An array of strings containing the IPv4
  /// [destinationDropletIds] An array containing the IDs of
  /// [destinationKubernetesIds] An array containing the IDs of
  /// [destinationLoadBalancerUids] An array containing the IDs
  /// [destinationTags] An array containing the names of Tags
  /// [portRange] The ports on which traffic will be allowed
  /// [protocol] The type of traffic to be allowed.
  FirewallOutboundRule({
    this.destinationAddresses,
    this.destinationDropletIds,
    this.destinationKubernetesIds,
    this.destinationLoadBalancerUids,
    this.destinationTags,
    this.portRange,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': ?destinationAddresses,
      'destinationDropletIds': ?destinationDropletIds,
      'destinationKubernetesIds': ?destinationKubernetesIds,
      'destinationLoadBalancerUids': ?destinationLoadBalancerUids,
      'destinationTags': ?destinationTags,
      'portRange': ?portRange,
      'protocol': protocol,
    };
  }

  factory FirewallOutboundRule.fromMap(Map<String, dynamic> map) {
    return FirewallOutboundRule(
      destinationAddresses: (() {
        final guardedValue = map['destinationAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationDropletIds: (() {
        final guardedValue = map['destinationDropletIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      destinationKubernetesIds: (() {
        final guardedValue = map['destinationKubernetesIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationLoadBalancerUids: (() {
        final guardedValue = map['destinationLoadBalancerUids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationTags: (() {
        final guardedValue = map['destinationTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      portRange: (() {
        final guardedValue = map['portRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
