// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal {
  /// The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc.def
  final pulumi.Input<String>? contains;
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  final pulumi.Input<String>? exact;
  /// If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  final pulumi.Input<bool>? ignoreCase;
  /// The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value abc.xyz
  final pulumi.Input<String>? prefix;
  /// The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc
  final pulumi.Input<String>? suffix;

  /// Creates a new [AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal].
  /// [contains] The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// [exact] The input string must match exactly the string specified here.
  /// [ignoreCase] If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  /// [prefix] The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// [suffix] The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  const AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'ignoreCase': ?ignoreCase,
      'prefix': ?prefix,
      'suffix': ?suffix,
    };
  }

  factory AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

