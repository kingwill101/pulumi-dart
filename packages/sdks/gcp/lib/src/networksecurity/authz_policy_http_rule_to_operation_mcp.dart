// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_operation_mcp_method.dart';

class AuthzPolicyHttpRuleToOperationMcp {
  /// If specified, matches on the MCP protocol’s non-access specific methods namely: * initialize/ * completion/ * logging/ * notifications/ * ping
  /// Default value is `SKIP_BASE_PROTOCOL_METHODS`.
  /// Possible values are: `SKIP_BASE_PROTOCOL_METHODS`, `MATCH_BASE_PROTOCOL_METHODS`.
  final pulumi.Input<String>? baseProtocolMethodsOption;
  /// Defines a set of MCP methods and associated parameters to match on. It is recommended to use this field to match on tools, prompts and resource accesses while setting the includeBaseProtocolMethods to true to match on all the other MCP protocol methods.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToOperationMcpMethod>>? methods;

  /// Creates a new [AuthzPolicyHttpRuleToOperationMcp].
  /// [baseProtocolMethodsOption] If specified, matches on the MCP protocol’s non-access specific methods namely: * initialize/ * completion/ * logging/ * notifications/ * ping
  /// [methods] Defines a set of MCP methods and associated parameters to match on. It is recommended to use this field to match on tools, prompts and resource accesses while setting the includeBaseProtocolMethods to true to match on all the other MCP protocol methods.
  const AuthzPolicyHttpRuleToOperationMcp({
    this.baseProtocolMethodsOption,
    this.methods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseProtocolMethodsOption': ?baseProtocolMethodsOption,
      'methods': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToOperationMcpMethod>, List<Map<String, dynamic>>>(methods, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationMcpMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyHttpRuleToOperationMcp.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationMcp(
      baseProtocolMethodsOption: (() { final guardedValue = map['baseProtocolMethodsOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationMcpMethod>(guardedValue, (value) => AuthzPolicyHttpRuleToOperationMcpMethod.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
