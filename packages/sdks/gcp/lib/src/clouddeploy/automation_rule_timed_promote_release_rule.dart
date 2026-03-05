// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleTimedPromoteReleaseRule {
  /// Optional. The starting phase of the rollout created by this rule. Default to the first phase.
  final pulumi.Input<String>? destinationPhase;
  /// Optional. The ID of the stage in the pipeline to which this Release is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following:
  /// - The last segment of a target name
  /// - "@next", the next target in the promotion sequence"
  final pulumi.Input<String>? destinationTargetId;
  /// Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;
  /// Required. Schedule in crontab format. e.g. `0 9 * * 1` for every Monday at 9am.
  final pulumi.Input<String> schedule;
  /// Required. The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  final pulumi.Input<String> timeZone;

  /// Creates a new [AutomationRuleTimedPromoteReleaseRule].
  /// [destinationPhase] Optional. The starting phase of the rollout created by this rule. Default to the first phase.
  /// [destinationTargetId] Optional. The ID of the stage in the pipeline to which this Release is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following:
  /// [id] Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [schedule] Required. Schedule in crontab format. e.g. `0 9 * * 1` for every Monday at 9am.
  /// [timeZone] Required. The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  AutomationRuleTimedPromoteReleaseRule({
    this.destinationPhase,
    this.destinationTargetId,
    required this.id,
    required this.schedule,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPhase': ?destinationPhase,
      'destinationTargetId': ?destinationTargetId,
      'id': id,
      'schedule': schedule,
      'timeZone': timeZone,
    };
  }

  factory AutomationRuleTimedPromoteReleaseRule.fromMap(Map<String, dynamic> map) {
    return AutomationRuleTimedPromoteReleaseRule(
      destinationPhase: (() { final guardedValue = map['destinationPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTargetId: (() { final guardedValue = map['destinationTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}

