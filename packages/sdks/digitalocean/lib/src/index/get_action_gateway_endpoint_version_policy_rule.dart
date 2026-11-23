// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayEndpointVersionPolicyRule {
  /// allow, ask, or deny
  final pulumi.Input<String> action;
  /// Argument values a call must match for the rule to apply, keyed by argument name
  final pulumi.Input<Map<String, String>> match;
  /// Tool slug, optionally pinned as &lt;tool_slug&gt;@&lt;version&gt;, or toolbelt:&lt;name&gt;@&lt;version&gt;
  final pulumi.Input<String> tool;

  /// Creates a new [GetActionGatewayEndpointVersionPolicyRule].
  /// [action] allow, ask, or deny
  /// [match] Argument values a call must match for the rule to apply, keyed by argument name
  /// [tool] Tool slug, optionally pinned as &lt;tool_slug&gt;@&lt;version&gt;, or toolbelt:&lt;name&gt;@&lt;version&gt;
  const GetActionGatewayEndpointVersionPolicyRule({
    required this.action,
    required this.match,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'match': match,
      'tool': tool,
    };
  }

  factory GetActionGatewayEndpointVersionPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointVersionPolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      match: pulumi.Input.fromValue((map['match'] as Map).cast<String, String>()),
      tool: pulumi.Input.fromValue(map['tool'] as String),
    );
  }
}
