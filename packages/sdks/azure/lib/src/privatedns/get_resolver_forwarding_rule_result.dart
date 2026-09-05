// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_forwarding_rule_target_dns_server.dart';

/// Result data returned by getResolverForwardingRule.
class GetResolverForwardingRuleResult {
  final String? dnsForwardingRulesetId;
  /// The domain name for the Private DNS Resolver Forwarding Rule.
  final String? domainName;
  /// Is the Private DNS Resolver Forwarding Rule enabled?
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The metadata attached to the Private DNS Resolver Forwarding Rule.
  final Map<String, String>? metadata;
  final String? name;
  /// A list of `targetDnsServers` block as defined below.
  final List<GetResolverForwardingRuleTargetDnsServer>? targetDnsServers;

  /// Creates a new [GetResolverForwardingRuleResult].
  /// [dnsForwardingRulesetId] Optional.
  /// [domainName] The domain name for the Private DNS Resolver Forwarding Rule.
  /// [enabled] Is the Private DNS Resolver Forwarding Rule enabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] The metadata attached to the Private DNS Resolver Forwarding Rule.
  /// [name] Optional.
  /// [targetDnsServers] A list of `targetDnsServers` block as defined below.
  const GetResolverForwardingRuleResult({
    this.dnsForwardingRulesetId,
    this.domainName,
    this.enabled,
    this.id,
    this.metadata,
    this.name,
    this.targetDnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': ?dnsForwardingRulesetId,
      'domainName': ?domainName,
      'enabled': ?enabled,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'targetDnsServers': ?(() { final guardedValue = targetDnsServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResolverForwardingRuleTargetDnsServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResolverForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResolverForwardingRuleResult(
      dnsForwardingRulesetId: (() { final guardedValue = map['dnsForwardingRulesetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetDnsServers: (() { final guardedValue = map['targetDnsServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResolverForwardingRuleTargetDnsServer>(guardedValue, (value) => GetResolverForwardingRuleTargetDnsServer.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
