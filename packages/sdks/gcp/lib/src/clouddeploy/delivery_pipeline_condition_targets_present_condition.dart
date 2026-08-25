// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineConditionTargetsPresentCondition {
  /// The list of Target names that are missing. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.
  final pulumi.Input<List<String>?>? missingTargets;
  /// True if there aren't any missing Targets.
  final pulumi.Input<bool?>? status;
  /// Output only. Most recent time at which the pipeline was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DeliveryPipelineConditionTargetsPresentCondition].
  /// [missingTargets] The list of Target names that are missing. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.
  /// [status] True if there aren't any missing Targets.
  /// [updateTime] Output only. Most recent time at which the pipeline was updated.
  const DeliveryPipelineConditionTargetsPresentCondition({
    this.missingTargets,
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'missingTargets': ?missingTargets,
      'status': ?status,
      'updateTime': ?updateTime,
    };
  }

  factory DeliveryPipelineConditionTargetsPresentCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineConditionTargetsPresentCondition(
      missingTargets: (() { final guardedValue = map['missingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
