// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertV2Action {
  /// List of Action Group resource IDs to invoke when the alert fires.
  final pulumi.Input<List<String>?>? actionGroups;
  /// Specifies the properties of an alert payload.
  final pulumi.Input<Map<String, String>?>? customProperties;
  /// Custom subject override for all email ids in Azure action group.
  final pulumi.Input<String?>? emailSubject;

  /// Creates a new [ScheduledQueryRulesAlertV2Action].
  /// [actionGroups] List of Action Group resource IDs to invoke when the alert fires.
  /// [customProperties] Specifies the properties of an alert payload.
  /// [emailSubject] Custom subject override for all email ids in Azure action group.
  const ScheduledQueryRulesAlertV2Action({
    this.actionGroups,
    this.customProperties,
    this.emailSubject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups,
      'customProperties': ?customProperties,
      'emailSubject': ?emailSubject,
    };
  }

  factory ScheduledQueryRulesAlertV2Action.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2Action(
      actionGroups: (() { final guardedValue = map['actionGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      emailSubject: (() { final guardedValue = map['emailSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
