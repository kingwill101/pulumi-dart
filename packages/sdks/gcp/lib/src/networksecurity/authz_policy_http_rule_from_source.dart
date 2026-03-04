// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_from_source_ip_block.dart';
import 'authz_policy_http_rule_from_source_principal.dart';
import 'authz_policy_http_rule_from_source_resource.dart';

class AuthzPolicyHttpRuleFromSource {
  /// A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleFromSourceIpBlock>>? ipBlocks;

  /// A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  /// Limited to 5 principals.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleFromSourcePrincipal>>? principals;

  /// A list of resources to match against the resource of the source VM of a request.
  /// Limited to 5 resources.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleFromSourceResource>>? resources;

  /// Creates a new [AuthzPolicyHttpRuleFromSource].
  /// [ipBlocks] A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// [principals] A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  /// [resources] A list of resources to match against the resource of the source VM of a request.
  AuthzPolicyHttpRuleFromSource({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthzPolicyHttpRuleFromSourceIpBlock>,
            List<Map<String, dynamic>>
          >(
            ipBlocks,
            (value) =>
                pulumi.Input.encodeList<
                  AuthzPolicyHttpRuleFromSourceIpBlock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'principals':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthzPolicyHttpRuleFromSourcePrincipal>,
            List<Map<String, dynamic>>
          >(
            principals,
            (value) =>
                pulumi.Input.encodeList<
                  AuthzPolicyHttpRuleFromSourcePrincipal,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthzPolicyHttpRuleFromSourceResource>,
            List<Map<String, dynamic>>
          >(
            resources,
            (value) =>
                pulumi.Input.encodeList<
                  AuthzPolicyHttpRuleFromSourceResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AuthzPolicyHttpRuleFromSource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSource(
      ipBlocks: (() {
        final guardedValue = map['ipBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuthzPolicyHttpRuleFromSourceIpBlock>(
            guardedValue,
            (value) => AuthzPolicyHttpRuleFromSourceIpBlock.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      principals: (() {
        final guardedValue = map['principals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuthzPolicyHttpRuleFromSourcePrincipal>(
            guardedValue,
            (value) => AuthzPolicyHttpRuleFromSourcePrincipal.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuthzPolicyHttpRuleFromSourceResource>(
            guardedValue,
            (value) => AuthzPolicyHttpRuleFromSourceResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
