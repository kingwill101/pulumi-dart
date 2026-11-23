// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayEndpointVersionPolicyRule {
  /// One of `allow`, `ask`, or `deny`.
  final pulumi.Input<String> action;
  /// Argument values a call must match for the rule to apply, keyed by argument name.
  final pulumi.Input<Map<String, String>?>? match;
  /// A tool slug, optionally pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, or `toolbelt:&lt;name&gt;@&lt;version&gt;`.
  final pulumi.Input<String> tool;

  /// Creates a new [ActionGatewayEndpointVersionPolicyRule].
  /// [action] One of `allow`, `ask`, or `deny`.
  /// [match] Argument values a call must match for the rule to apply, keyed by argument name.
  /// [tool] A tool slug, optionally pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, or `toolbelt:&lt;name&gt;@&lt;version&gt;`.
  const ActionGatewayEndpointVersionPolicyRule({
    required this.action,
    this.match,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'match': ?match,
      'tool': tool,
    };
  }

  factory ActionGatewayEndpointVersionPolicyRule.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointVersionPolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tool: pulumi.Input.fromValue(map['tool'] as String),
    );
  }
}
