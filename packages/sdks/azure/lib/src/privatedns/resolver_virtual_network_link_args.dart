// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_resolver_virtual_network_link_resolver_virtual_network_link_args_doc}
/// The set of arguments for ResolverVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_virtual_network_link_resolver_virtual_network_link_args_doc}
class ResolverVirtualNetworkLinkArgs {
  /// Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  final pulumi.Input<String> dnsForwardingRulesetId;
  /// Metadata attached to the Private DNS Resolver Virtual Network Link.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [ResolverVirtualNetworkLinkArgs].
  /// [dnsForwardingRulesetId] Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  /// [metadata] Metadata attached to the Private DNS Resolver Virtual Network Link.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created.
  ResolverVirtualNetworkLinkArgs({
    required this.dnsForwardingRulesetId,
    this.metadata,
    this.name,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': dnsForwardingRulesetId,
      'metadata': ?metadata,
      'name': ?name,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory ResolverVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return ResolverVirtualNetworkLinkArgs(
      dnsForwardingRulesetId: (map['dnsForwardingRulesetId'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      virtualNetworkId: (map['virtualNetworkId'] as String).input(),
    );
  }
}

