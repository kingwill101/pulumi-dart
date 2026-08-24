// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_rule_actions.dart';

/// Input properties used for looking up and filtering PageRule resources.
class PageRuleState {
  final pulumi.Input<PageRuleActions?>? actions;
  /// The timestamp of when the Page Rule was created.
  final pulumi.Input<String?>? createdOn;
  /// The timestamp of when the Page Rule was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The priority of the rule, used to define which Page Rule is processed
  /// over another. A higher number indicates a higher priority. For example,
  /// if you have a catch-all Page Rule (rule A: `/images/*`) but want a more
  /// specific Page Rule to take precedence (rule B: `/images/special/*`),
  /// specify a higher priority for rule B so it overrides rule A.
  final pulumi.Input<int?>? priority;
  /// The status of the Page Rule.
  /// Available values: "active", "disabled".
  final pulumi.Input<String?>? status;
  final pulumi.Input<String?>? target;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [PageRuleState].
  /// [actions] Optional.
  /// [createdOn] The timestamp of when the Page Rule was created.
  /// [modifiedOn] The timestamp of when the Page Rule was last modified.
  /// [priority] The priority of the rule, used to define which Page Rule is processed
  /// [status] The status of the Page Rule.
  /// [target] Optional.
  /// [zoneId] Identifier.
  const PageRuleState({
    this.actions,
    this.createdOn,
    this.modifiedOn,
    this.priority,
    this.status,
    this.target,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<PageRuleActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'modifiedOn': ?modifiedOn,
      'priority': ?priority,
      'status': ?status,
      'target': ?target,
      'zoneId': ?zoneId,
    };
  }

  factory PageRuleState.fromMap(Map<String, dynamic> map) {
    return PageRuleState(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
