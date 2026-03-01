// ignore_for_file: unused_element, unnecessary_cast


class AlertPrometheusRuleGroupRuleAction {
  /// Specifies the resource id of the monitor action group.
  final String actionGroupId;
  /// Specifies the properties of an action group object.
  ///
  /// > **Note:** `action_properties` can only be configured for IcM Connector Action Groups for now. Other public features will be supported in the future.
  final Map<String, String>? actionProperties;

  /// Creates a new [AlertPrometheusRuleGroupRuleAction].
  /// [actionGroupId] Specifies the resource id of the monitor action group.
  /// [actionProperties] Specifies the properties of an action group object.
  AlertPrometheusRuleGroupRuleAction({
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
      actionGroupId: map['actionGroupId'] as String,
      actionProperties: map['actionProperties'] == null ? null : (map['actionProperties'] as Map).cast<String, String>(),
    );
  }
}

