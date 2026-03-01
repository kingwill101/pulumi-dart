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
  GetResolverDnsForwardingRulesetArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResolverDnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverDnsForwardingRulesetArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

