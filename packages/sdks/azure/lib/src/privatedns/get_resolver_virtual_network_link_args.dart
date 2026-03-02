// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_virtual_network_link_get_resolver_virtual_network_link_args_doc}
/// Arguments for getResolverVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_virtual_network_link_get_resolver_virtual_network_link_args_doc}
class GetResolverVirtualNetworkLinkArgs {
  /// ID of the Private DNS Resolver DNS Forwarding Ruleset.
  final pulumi.Input<String> dnsForwardingRulesetId;
  /// Name of the Private DNS Resolver Virtual Network Link.
  final pulumi.Input<String> name;

  /// Creates a new [GetResolverVirtualNetworkLinkArgs].
  /// [dnsForwardingRulesetId] ID of the Private DNS Resolver DNS Forwarding Ruleset.
  /// [name] Name of the Private DNS Resolver Virtual Network Link.
  GetResolverVirtualNetworkLinkArgs({
    required this.dnsForwardingRulesetId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': dnsForwardingRulesetId,
      'name': name,
    };
  }

  factory GetResolverVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverVirtualNetworkLinkArgs(
      dnsForwardingRulesetId: (map['dnsForwardingRulesetId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

