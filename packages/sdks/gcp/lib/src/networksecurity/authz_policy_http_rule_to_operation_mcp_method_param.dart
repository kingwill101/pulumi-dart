// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyHttpRuleToOperationMcpMethodParam {
  /// A substring match on the MCP method parameter name.
  final pulumi.Input<String>? contains;
  /// An exact match on the MCP method parameter name.
  final pulumi.Input<String>? exact;
  /// Specifies that the string match should be case insensitive.
  final pulumi.Input<bool>? ignoreCase;
  /// A prefix match on the MCP method parameter name.
  final pulumi.Input<String>? prefix;
  /// A suffix match on the MCP method parameter name.
  final pulumi.Input<String>? suffix;

  /// Creates a new [AuthzPolicyHttpRuleToOperationMcpMethodParam].
  /// [contains] A substring match on the MCP method parameter name.
  /// [exact] An exact match on the MCP method parameter name.
  /// [ignoreCase] Specifies that the string match should be case insensitive.
  /// [prefix] A prefix match on the MCP method parameter name.
  /// [suffix] A suffix match on the MCP method parameter name.
  const AuthzPolicyHttpRuleToOperationMcpMethodParam({
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

  factory AuthzPolicyHttpRuleToOperationMcpMethodParam.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationMcpMethodParam(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
