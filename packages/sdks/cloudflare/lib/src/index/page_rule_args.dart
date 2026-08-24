// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_rule_actions.dart';

/// {@template pulumi_index_page_rule_page_rule_args_doc}
/// The set of arguments for PageRule.
/// {@endtemplate}
/// {@macro pulumi_index_page_rule_page_rule_args_doc}
class PageRuleArgs {
  final pulumi.Input<PageRuleActions> actions;
  /// The priority of the rule, used to define which Page Rule is processed
  /// over another. A higher number indicates a higher priority. For example,
  /// if you have a catch-all Page Rule (rule A: `/images/*`) but want a more
  /// specific Page Rule to take precedence (rule B: `/images/special/*`),
  /// specify a higher priority for rule B so it overrides rule A.
  final pulumi.Input<int?>? priority;
  /// The status of the Page Rule.
  /// Available values: "active", "disabled".
  final pulumi.Input<String?>? status;
  final pulumi.Input<String> target;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [PageRuleArgs].
  /// [actions] Required.
  /// [priority] The priority of the rule, used to define which Page Rule is processed
  /// [status] The status of the Page Rule.
  /// [target] Required.
  /// [zoneId] Identifier.
  const PageRuleArgs({
    required this.actions,
    this.priority,
    this.status,
    required this.target,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<PageRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'priority': ?priority,
      'status': ?status,
      'target': target,
      'zoneId': zoneId,
    };
  }

  factory PageRuleArgs.fromMap(Map<String, dynamic> map) {
    return PageRuleArgs(
      actions: pulumi.Input.fromValue(PageRuleActions.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
