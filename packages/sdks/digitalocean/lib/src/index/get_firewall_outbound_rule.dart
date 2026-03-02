// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallOutboundRule {
  /// An array of strings containing the IPv4
  /// addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which the
  /// outbound traffic will be allowed.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// An array containing the IDs of
  /// the Droplets to which the outbound traffic will be allowed.
  final pulumi.Input<List<int>>? destinationDropletIds;
  final pulumi.Input<List<String>>? destinationKubernetesIds;
  /// An array containing the IDs
  /// of the Load Balancers to which the outbound traffic will be allowed.
  final pulumi.Input<List<String>>? destinationLoadBalancerUids;
  /// An array containing the names of Tags
  /// corresponding to groups of Droplets to which the outbound traffic will
  /// be allowed.
  /// traffic.
  final pulumi.Input<List<String>>? destinationTags;
  /// The ports on which traffic will be allowed
  /// specified as a string containing a single port, a range (e.g. "8000-9000"),
  /// or "1-65535" to open all ports for a protocol. Required for when protocol is
  /// `tcp` or `udp`.
  final pulumi.Input<String>? portRange;
  /// The type of traffic to be allowed.
  /// This may be one of "tcp", "udp", or "icmp".
  final pulumi.Input<String> protocol;

  /// Creates a new [GetFirewallOutboundRule].
  /// [destinationAddresses] An array of strings containing the IPv4
  /// [destinationDropletIds] An array containing the IDs of
  /// [destinationKubernetesIds] Optional.
  /// [destinationLoadBalancerUids] An array containing the IDs
  /// [destinationTags] An array containing the names of Tags
  /// [portRange] The ports on which traffic will be allowed
  /// [protocol] The type of traffic to be allowed.
  GetFirewallOutboundRule({
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

  factory GetFirewallOutboundRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallOutboundRule(
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses']! as List).cast<String>()).input(),
      destinationDropletIds: map['destinationDropletIds'] == null ? null : ((map['destinationDropletIds']! as List).cast<int>()).input(),
      destinationKubernetesIds: map['destinationKubernetesIds'] == null ? null : ((map['destinationKubernetesIds']! as List).cast<String>()).input(),
      destinationLoadBalancerUids: map['destinationLoadBalancerUids'] == null ? null : ((map['destinationLoadBalancerUids']! as List).cast<String>()).input(),
      destinationTags: map['destinationTags'] == null ? null : ((map['destinationTags']! as List).cast<String>()).input(),
      portRange: map['portRange'] == null ? null : (map['portRange']! as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

