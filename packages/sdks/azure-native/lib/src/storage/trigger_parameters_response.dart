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
  const TriggerParametersResponse({
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
      endBy: (() { final guardedValue = map['endBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalUnit: (() { final guardedValue = map['intervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startFrom: (() { final guardedValue = map['startFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOn: (() { final guardedValue = map['startOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
