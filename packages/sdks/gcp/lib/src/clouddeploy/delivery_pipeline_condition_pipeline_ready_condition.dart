// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineConditionPipelineReadyCondition {
  /// True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.
  final pulumi.Input<bool>? status;

  /// Output only. Most recent time at which the pipeline was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DeliveryPipelineConditionPipelineReadyCondition].
  /// [status] True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.
  /// [updateTime] Output only. Most recent time at which the pipeline was updated.
  DeliveryPipelineConditionPipelineReadyCondition({
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status, 'updateTime': ?updateTime};
  }

  factory DeliveryPipelineConditionPipelineReadyCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineConditionPipelineReadyCondition(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
