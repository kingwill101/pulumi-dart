// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_dns_forwarding_ruleset_get_resolver_dns_forwarding_ruleset_args_doc}
/// Arguments for getResolverDnsForwardingRuleset.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_dns_forwarding_ruleset_get_resolver_dns_forwarding_ruleset_args_doc}
class GetResolverDnsForwardingRulesetArgs {
  /// Name of the existing Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<String> name;
  /// Name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResolverDnsForwardingRulesetArgs].
  /// [name] Name of the existing Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset exists.
  const GetResolverDnsForwardingRulesetArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResolverDnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverDnsForwardingRulesetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
