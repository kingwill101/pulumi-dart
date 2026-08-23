// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_not_source_ip_block.dart';
import 'authz_policy_network_rule_from_not_source_principal.dart';

class AuthzPolicyNetworkRuleFromNotSource {
  /// A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromNotSourceIpBlock>>? ipBlocks;
  /// A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  /// Limited to 5 principals.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromNotSourcePrincipal>>? principals;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSource].
  /// [ipBlocks] A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// [principals] A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  const AuthzPolicyNetworkRuleFromNotSource({
    this.ipBlocks,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromNotSourceIpBlock>, List<Map<String, dynamic>>>(ipBlocks, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromNotSourceIpBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromNotSourcePrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromNotSourcePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSource(
      ipBlocks: (() { final guardedValue = map['ipBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromNotSourceIpBlock>(guardedValue, (value) => AuthzPolicyNetworkRuleFromNotSourceIpBlock.fromMap((value as Map).cast<String, dynamic>()))); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromNotSourcePrincipal>(guardedValue, (value) => AuthzPolicyNetworkRuleFromNotSourcePrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
