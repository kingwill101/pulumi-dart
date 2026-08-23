// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_source_ip_block.dart';
import 'authz_policy_network_rule_from_source_principal.dart';

class AuthzPolicyNetworkRuleFromSource {
  /// A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromSourceIpBlock>>? ipBlocks;
  /// A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  /// Limited to 5 principals.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromSourcePrincipal>>? principals;

  /// Creates a new [AuthzPolicyNetworkRuleFromSource].
  /// [ipBlocks] A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// [principals] A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  const AuthzPolicyNetworkRuleFromSource({
    this.ipBlocks,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromSourceIpBlock>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromSourceIpBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromSourcePrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromSourcePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleFromSource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromSource(
      ipBlocks: (() { final guardedValue = map['ipBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromSourceIpBlock>(guardedValue, (value) => AuthzPolicyNetworkRuleFromSourceIpBlock.fromMap((value as Map).cast<String, dynamic>()))); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromSourcePrincipal>(guardedValue, (value) => AuthzPolicyNetworkRuleFromSourcePrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
