// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_forwarding_rule_target_dns_server.dart';

/// Result data returned by getResolverForwardingRule.
class GetResolverForwardingRuleResult {
  final String dnsForwardingRulesetId;
  /// The domain name for the Private DNS Resolver Forwarding Rule.
  final String domainName;
  /// Is the Private DNS Resolver Forwarding Rule enabled?
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The metadata attached to the Private DNS Resolver Forwarding Rule.
  final Map<String, String> metadata;
  final String name;
  /// A list of `target_dns_servers` block as defined below.
  final List<GetResolverForwardingRuleTargetDnsServer> targetDnsServers;

  /// Creates a new [GetResolverForwardingRuleResult].
  /// [dnsForwardingRulesetId] Required.
  /// [domainName] The domain name for the Private DNS Resolver Forwarding Rule.
  /// [enabled] Is the Private DNS Resolver Forwarding Rule enabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] The metadata attached to the Private DNS Resolver Forwarding Rule.
  /// [name] Required.
  /// [targetDnsServers] A list of `target_dns_servers` block as defined below.
  GetResolverForwardingRuleResult({
    required this.dnsForwardingRulesetId,
    required this.domainName,
    required this.enabled,
    required this.id,
    required this.metadata,
    required this.name,
    required this.targetDnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': dnsForwardingRulesetId,
      'domainName': domainName,
      'enabled': enabled,
      'id': id,
      'metadata': metadata,
      'name': name,
      'targetDnsServers': pulumi.Input.encodeList<GetResolverForwardingRuleTargetDnsServer, Map<String, dynamic>>(targetDnsServers, (value) => value.toMap()),
    };
  }

  factory GetResolverForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResolverForwardingRuleResult(
      dnsForwardingRulesetId: map['dnsForwardingRulesetId'] as String,
      domainName: map['domainName'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      targetDnsServers: pulumi.Input.decodeList<GetResolverForwardingRuleTargetDnsServer>(map['targetDnsServers'], (value) => GetResolverForwardingRuleTargetDnsServer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

