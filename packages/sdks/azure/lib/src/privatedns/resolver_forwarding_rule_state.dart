// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_forwarding_rule_target_dns_server.dart';

/// Input properties used for looking up and filtering ResolverForwardingRule resources.
class ResolverForwardingRuleState {
  /// Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  final pulumi.Input<String>? dnsForwardingRulesetId;
  /// Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  final pulumi.Input<String>? domainName;
  /// Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Metadata attached to the Private DNS Resolver Forwarding Rule.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  final pulumi.Input<String>? name;
  /// Can be specified multiple times to define multiple target DNS servers. Each `target_dns_servers` block as defined below.
  final pulumi.Input<List<ResolverForwardingRuleTargetDnsServer>>? targetDnsServers;

  /// Creates a new [ResolverForwardingRuleState].
  /// [dnsForwardingRulesetId] Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  /// [domainName] Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  /// [enabled] Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`.
  /// [metadata] Metadata attached to the Private DNS Resolver Forwarding Rule.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  /// [targetDnsServers] Can be specified multiple times to define multiple target DNS servers. Each `target_dns_servers` block as defined below.
  ResolverForwardingRuleState({
    this.dnsForwardingRulesetId,
    this.domainName,
    this.enabled,
    this.metadata,
    this.name,
    this.targetDnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': ?dnsForwardingRulesetId,
      'domainName': ?domainName,
      'enabled': ?enabled,
      'metadata': ?metadata,
      'name': ?name,
      'targetDnsServers': ?pulumi.Input.mapOptionalInputValue<List<ResolverForwardingRuleTargetDnsServer>, List<Map<String, dynamic>>>(targetDnsServers, (value) => pulumi.Input.encodeList<ResolverForwardingRuleTargetDnsServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResolverForwardingRuleState.fromMap(Map<String, dynamic> map) {
    return ResolverForwardingRuleState(
      dnsForwardingRulesetId: (() { final guardedValue = map['dnsForwardingRulesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDnsServers: (() { final guardedValue = map['targetDnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResolverForwardingRuleTargetDnsServer>(guardedValue, (value) => ResolverForwardingRuleTargetDnsServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

