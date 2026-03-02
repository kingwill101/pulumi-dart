// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_from_not_source.dart';
import 'authz_policy_http_rule_from_source.dart';

class AuthzPolicyHttpRuleFrom {
  /// Describes the negated properties of request sources. Matches requests from sources that do not match the criteria specified in this field. At least one of sources or notSources must be specified. Limited to 1 not_source.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleFromNotSource>>? notSources;
  /// Describes the properties of a request's sources. At least one of sources or notSources must be specified. Limited to 1 source. A match occurs when ANY source (in sources or notSources) matches the request. Within a single source, the match follows AND semantics across fields and OR semantics within a single field, i.e. a match occurs when ANY principal matches AND ANY ipBlocks match.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleFromSource>>? sources;

  /// Creates a new [AuthzPolicyHttpRuleFrom].
  /// [notSources] Describes the negated properties of request sources. Matches requests from sources that do not match the criteria specified in this field. At least one of sources or notSources must be specified. Limited to 1 not_source.
  /// [sources] Describes the properties of a request's sources. At least one of sources or notSources must be specified. Limited to 1 source. A match occurs when ANY source (in sources or notSources) matches the request. Within a single source, the match follows AND semantics across fields and OR semantics within a single field, i.e. a match occurs when ANY principal matches AND ANY ipBlocks match.
  AuthzPolicyHttpRuleFrom({
    this.notSources,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notSources': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleFromNotSource>, List<Map<String, dynamic>>>(notSources, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleFromNotSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyHttpRuleFrom.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFrom(
      notSources: map['notSources'] == null ? null : (pulumi.Input.decodeList<AuthzPolicyHttpRuleFromNotSource>(map['notSources']!, (value) => AuthzPolicyHttpRuleFromNotSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<AuthzPolicyHttpRuleFromSource>(map['sources']!, (value) => AuthzPolicyHttpRuleFromSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

