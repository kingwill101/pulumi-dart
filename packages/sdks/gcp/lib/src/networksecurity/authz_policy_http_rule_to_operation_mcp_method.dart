// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_operation_mcp_method_param.dart';

class AuthzPolicyHttpRuleToOperationMcpMethod {
  /// The MCP method to match against. Allowed values are as follows:
  /// 1) “tools”, “prompts”, “resources” - these will match against all sub methods under the respective methods.
  /// 2) “prompts/list”, “tools/list”, “resources/list”, “resources/templates/list”
  /// 3) “prompts/get”, “tools/call”, “resources/subscribe”, “resources/unsubscribe”, “resources/read”
  /// Params cannot be specified for categories 1) and 2).
  final pulumi.Input<String> name;
  /// MCP method parameters to match against.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToOperationMcpMethodParam>?>? params;

  /// Creates a new [AuthzPolicyHttpRuleToOperationMcpMethod].
  /// [name] The MCP method to match against. Allowed values are as follows:
  /// [params] MCP method parameters to match against.
  const AuthzPolicyHttpRuleToOperationMcpMethod({
    required this.name,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'params': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToOperationMcpMethodParam>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationMcpMethodParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyHttpRuleToOperationMcpMethod.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationMcpMethod(
      name: pulumi.Input.fromValue(map['name'] as String),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationMcpMethodParam>(guardedValue, (value) => AuthzPolicyHttpRuleToOperationMcpMethodParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
