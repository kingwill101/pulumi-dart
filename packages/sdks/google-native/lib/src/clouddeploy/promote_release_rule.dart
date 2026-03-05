// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `PromoteRelease` rule will automatically promote a release from the current target to a specified target.
class PromoteReleaseRule {
  /// Optional. The starting phase of the rollout created by this operation. Default to the first phase.
  final pulumi.Input<String>? destinationPhase;
  /// Optional. The ID of the stage in the pipeline to which this `Release` is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * "@next", the next target in the promotion sequence.
  final pulumi.Input<String>? destinationTargetId;
  /// ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;
  /// Optional. How long the release need to be paused until being promoted to the next target.
  final pulumi.Input<String>? wait;

  /// Creates a new [PromoteReleaseRule].
  /// [destinationPhase] Optional. The starting phase of the rollout created by this operation. Default to the first phase.
  /// [destinationTargetId] Optional. The ID of the stage in the pipeline to which this `Release` is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * "@next", the next target in the promotion sequence.
  /// [id] ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [wait] Optional. How long the release need to be paused until being promoted to the next target.
  PromoteReleaseRule({
    this.destinationPhase,
    this.destinationTargetId,
    required this.id,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPhase': ?destinationPhase,
      'destinationTargetId': ?destinationTargetId,
      'id': id,
      'wait': ?wait,
    };
  }

  factory PromoteReleaseRule.fromMap(Map<String, dynamic> map) {
    return PromoteReleaseRule(
      destinationPhase: (() { final guardedValue = map['destinationPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTargetId: (() { final guardedValue = map['destinationTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      wait: (() { final guardedValue = map['wait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

