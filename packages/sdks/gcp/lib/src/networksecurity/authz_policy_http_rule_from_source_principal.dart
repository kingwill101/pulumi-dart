// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_from_source_principal_principal.dart';

class AuthzPolicyHttpRuleFromSourcePrincipal {
  /// (Optional, Deprecated)
  /// The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc.def
  ///
  /// &gt; **Warning:** `principals.contains` is deprecated and will be removed in a future major release. Use `principals.principal.contains` instead.
  final pulumi.Input<String?>? contains;
  /// (Optional, Deprecated)
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  ///
  /// &gt; **Warning:** `principals.exact` is deprecated and will be removed in a future major release. Use `principals.principal.exact` instead.
  final pulumi.Input<String?>? exact;
  /// (Optional, Deprecated)
  /// If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  ///
  /// &gt; **Warning:** `principals.ignore_case` is deprecated and will be removed in a future major release. Use `principals.principal.ignore_case` instead.
  final pulumi.Input<bool?>? ignoreCase;
  /// (Optional, Deprecated)
  /// The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value abc.xyz
  ///
  /// &gt; **Warning:** `principals.prefix` is deprecated and will be removed in a future major release. Use `principals.principal.prefix` instead.
  final pulumi.Input<String?>? prefix;
  /// Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// Only exact match can be applied for CLIENT_CERT_URI_SAN, CLIENT_CERT_DNS_NAME_SAN, CLIENT_CERT_COMMON_NAME selectors.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyHttpRuleFromSourcePrincipalPrincipal?>? principal;
  /// An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// Default value is `CLIENT_CERT_URI_SAN`.
  /// Possible values are: `PRINCIPAL_SELECTOR_UNSPECIFIED`, `CLIENT_CERT_URI_SAN`, `CLIENT_CERT_DNS_NAME_SAN`, `CLIENT_CERT_COMMON_NAME`.
  final pulumi.Input<String?>? principalSelector;
  /// (Optional, Deprecated)
  /// The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc
  ///
  /// &gt; **Warning:** `principals.suffix` is deprecated and will be removed in a future major release. Use `principals.principal.suffix` instead.
  final pulumi.Input<String?>? suffix;

  /// Creates a new [AuthzPolicyHttpRuleFromSourcePrincipal].
  /// [contains] (Optional, Deprecated)
  /// [exact] (Optional, Deprecated)
  /// [ignoreCase] (Optional, Deprecated)
  /// [prefix] (Optional, Deprecated)
  /// [principal] Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// [principalSelector] An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// [suffix] (Optional, Deprecated)
  const AuthzPolicyHttpRuleFromSourcePrincipal({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.principal,
    this.principalSelector,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'ignoreCase': ?ignoreCase,
      'prefix': ?prefix,
      'principal': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyHttpRuleFromSourcePrincipalPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'principalSelector': ?principalSelector,
      'suffix': ?suffix,
    };
  }

  factory AuthzPolicyHttpRuleFromSourcePrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourcePrincipal(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyHttpRuleFromSourcePrincipalPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      principalSelector: (() { final guardedValue = map['principalSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
