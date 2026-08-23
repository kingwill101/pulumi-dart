// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures {
  /// The actions to take to add signatures to responses.
  /// Each value may be one of: `GENERATE_COOKIE`, `GENERATE_TOKEN_HLS_COOKIELESS`, `PROPAGATE_TOKEN_HLS_COOKIELESS`.
  final pulumi.Input<String> actions;
  /// The parameters to copy from the verified token to the generated token.
  /// Only the following parameters may be copied:
  /// * `PathGlobs`
  final pulumi.Input<List<String>>? copiedParameters;
  /// The keyset to use for signature generation.
  /// The following are both valid paths to an EdgeCacheKeyset resource:
  /// * `projects/project/locations/global/edgeCacheKeysets/yourKeyset`
  /// * `yourKeyset`
  /// This must be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.  This field may not be specified otherwise.
  final pulumi.Input<String>? keyset;
  /// The query parameter in which to put the generated token.
  /// If not specified, defaults to `edge-cache-token`.
  /// If specified, the name must be 1-64 characters long and match the regular expression `a-zA-Z*` which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.
  /// This field may only be set when the GENERATE_TOKEN_HLS_COOKIELESS or PROPAGATE_TOKEN_HLS_COOKIELESS actions are specified.
  final pulumi.Input<String>? tokenQueryParameter;
  /// The duration the token is valid starting from the moment the token is first generated.
  /// Defaults to `86400s` (1 day).
  /// The TTL must be &gt;= 0 and &lt;= 604,800 seconds (1 week).
  /// This field may only be specified when the GENERATE_COOKIE or GENERATE_TOKEN_HLS_COOKIELESS actions are specified.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures].
  /// [actions] The actions to take to add signatures to responses.
  /// [copiedParameters] The parameters to copy from the verified token to the generated token.
  /// [keyset] The keyset to use for signature generation.
  /// [tokenQueryParameter] The query parameter in which to put the generated token.
  /// [tokenTtl] The duration the token is valid starting from the moment the token is first generated.
  const EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures({
    required this.actions,
    this.copiedParameters,
    this.keyset,
    this.tokenQueryParameter,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'copiedParameters': ?copiedParameters,
      'keyset': ?keyset,
      'tokenQueryParameter': ?tokenQueryParameter,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures(
      actions: pulumi.Input.fromValue(map['actions'] as String),
      copiedParameters: (() { final guardedValue = map['copiedParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyset: (() { final guardedValue = map['keyset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenQueryParameter: (() { final guardedValue = map['tokenQueryParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenTtl: (() { final guardedValue = map['tokenTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
