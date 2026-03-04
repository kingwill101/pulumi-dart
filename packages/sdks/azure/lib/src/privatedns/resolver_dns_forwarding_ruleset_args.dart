// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_resolver_dns_forwarding_ruleset_resolver_dns_forwarding_ruleset_args_doc}
/// The set of arguments for ResolverDnsForwardingRuleset.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_dns_forwarding_ruleset_resolver_dns_forwarding_ruleset_args_doc}
class ResolverDnsForwardingRulesetArgs {
  /// Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? name;

  /// The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<List<String>> privateDnsResolverOutboundEndpointIds;

  /// Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverDnsForwardingRulesetArgs].
  /// [location] Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [privateDnsResolverOutboundEndpointIds] The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [tags] A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  ResolverDnsForwardingRulesetArgs({
    this.location,
    this.name,
    required this.privateDnsResolverOutboundEndpointIds,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateDnsResolverOutboundEndpointIds':
          privateDnsResolverOutboundEndpointIds,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResolverDnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return ResolverDnsForwardingRulesetArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateDnsResolverOutboundEndpointIds: pulumi.Input.fromValue(
        (map['privateDnsResolverOutboundEndpointIds'] as List).cast<String>(),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
