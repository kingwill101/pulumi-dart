// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPrometheusRuleGroupRuleAction {
  /// Specifies the resource id of the monitor action group.
  final pulumi.Input<String> actionGroupId;
  /// Specifies the properties of an action group object.
  ///
  /// &gt; **Note:** `action_properties` can only be configured for IcM Connector Action Groups for now. Other public features will be supported in the future.
  final pulumi.Input<Map<String, String>>? actionProperties;

  /// Creates a new [AlertPrometheusRuleGroupRuleAction].
  /// [actionGroupId] Specifies the resource id of the monitor action group.
  /// [actionProperties] Specifies the properties of an action group object.
  const AlertPrometheusRuleGroupRuleAction({
    required this.actionGroupId,
    this.actionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupId': actionGroupId,
      'actionProperties': ?actionProperties,
    };
  }

  factory AlertPrometheusRuleGroupRuleAction.fromMap(Map<String, dynamic> map) {
    return AlertPrometheusRuleGroupRuleAction(
      actionGroupId: pulumi.Input.fromValue(map['actionGroupId'] as String),
      actionProperties: (() { final guardedValue = map['actionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

