// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The trigger parameters update for the storage task assignment execution
class TriggerParametersResponse {
  /// When to end task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<String>? endBy;
  /// Run interval of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<int>? interval;
  /// Run interval unit of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<String>? intervalUnit;
  /// When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<String>? startFrom;
  /// When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'RunOnce'; this property should not be present when ExecutionTrigger.properties.type is 'OnSchedule'
  final pulumi.Input<String>? startOn;

  /// Creates a new [TriggerParametersResponse].
  /// [endBy] When to end task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [interval] Run interval of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [intervalUnit] Run interval unit of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [startFrom] When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [startOn] When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'RunOnce'; this property should not be present when ExecutionTrigger.properties.type is 'OnSchedule'
  TriggerParametersResponse({
    this.endBy,
    this.interval,
    this.intervalUnit,
    this.startFrom,
    this.startOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endBy': ?endBy,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
      'startFrom': ?startFrom,
      'startOn': ?startOn,
    };
  }

  factory TriggerParametersResponse.fromMap(Map<String, dynamic> map) {
    return TriggerParametersResponse(
      endBy: map['endBy'] == null ? null : (map['endBy']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      intervalUnit: map['intervalUnit'] == null ? null : (map['intervalUnit']! as String).input(),
      startFrom: map['startFrom'] == null ? null : (map['startFrom']! as String).input(),
      startOn: map['startOn'] == null ? null : (map['startOn']! as String).input(),
    );
  }
}

