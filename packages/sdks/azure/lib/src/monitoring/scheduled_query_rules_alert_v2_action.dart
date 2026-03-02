// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertV2Action {
  /// List of Action Group resource IDs to invoke when the alert fires.
  final pulumi.Input<List<String>>? actionGroups;
  /// Specifies the properties of an alert payload.
  final pulumi.Input<Map<String, String>>? customProperties;

  /// Creates a new [ScheduledQueryRulesAlertV2Action].
  /// [actionGroups] List of Action Group resource IDs to invoke when the alert fires.
  /// [customProperties] Specifies the properties of an alert payload.
  ScheduledQueryRulesAlertV2Action({
    this.actionGroups,
    this.customProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'customProperties': ?customProperties,
    };
  }

  factory ScheduledQueryRulesAlertV2Action.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2Action(
      actionGroups: map['actionGroups'] == null ? null : ((map['actionGroups']! as List).cast<String>()).input(),
      customProperties: map['customProperties'] == null ? null : ((map['customProperties']! as Map).cast<String, String>()).input(),
    );
  }
}

