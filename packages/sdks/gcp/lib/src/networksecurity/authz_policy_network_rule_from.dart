// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_not_source.dart';
import 'authz_policy_network_rule_from_source.dart';

class AuthzPolicyNetworkRuleFrom {
  /// Describes the negated properties of request sources. Matches requests from sources that do not match the criteria specified in this field. At least one of sources or notSources must be specified. Limited to 1 not_source.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromNotSource>?>? notSources;
  /// Describes the properties of a request's sources. At least one of sources or notSources must be specified. Limited to 1 source. A match occurs when ANY source (in sources or notSources) matches the request. Within a single source, the match follows AND semantics across fields and OR semantics within a single field, i.e. a match occurs when ANY principal matches AND ANY ipBlocks match.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleFromSource>?>? sources;

  /// Creates a new [AuthzPolicyNetworkRuleFrom].
  /// [notSources] Describes the negated properties of request sources. Matches requests from sources that do not match the criteria specified in this field. At least one of sources or notSources must be specified. Limited to 1 not_source.
  /// [sources] Describes the properties of a request's sources. At least one of sources or notSources must be specified. Limited to 1 source. A match occurs when ANY source (in sources or notSources) matches the request. Within a single source, the match follows AND semantics across fields and OR semantics within a single field, i.e. a match occurs when ANY principal matches AND ANY ipBlocks match.
  const AuthzPolicyNetworkRuleFrom({
    this.notSources,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notSources': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromNotSource>, List<Map<String, dynamic>>>(notSources, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromNotSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleFrom.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFrom(
      notSources: (() { final guardedValue = map['notSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromNotSource>(guardedValue, (value) => AuthzPolicyNetworkRuleFromNotSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleFromSource>(guardedValue, (value) => AuthzPolicyNetworkRuleFromSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
