// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interval_unit.dart';

/// The trigger parameters update for the storage task assignment execution
class TriggerParameters {
  /// When to end task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<String>? endBy;
  /// Run interval of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<int>? interval;
  /// Run interval unit of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<IntervalUnit>? intervalUnit;
  /// When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  final pulumi.Input<String>? startFrom;
  /// When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'RunOnce'; this property should not be present when ExecutionTrigger.properties.type is 'OnSchedule'
  final pulumi.Input<String>? startOn;

  /// Creates a new [TriggerParameters].
  /// [endBy] When to end task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [interval] Run interval of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [intervalUnit] Run interval unit of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [startFrom] When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
  /// [startOn] When to start task execution. This is a required field when ExecutionTrigger.properties.type is 'RunOnce'; this property should not be present when ExecutionTrigger.properties.type is 'OnSchedule'
  TriggerParameters({
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
      'intervalUnit': ?pulumi.Input.mapOptionalInputValue<IntervalUnit, String>(intervalUnit, (value) => value.wireValue),
      'startFrom': ?startFrom,
      'startOn': ?startOn,
    };
  }

  factory TriggerParameters.fromMap(Map<String, dynamic> map) {
    return TriggerParameters(
      endBy: (() { final guardedValue = map['endBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalUnit: (() { final guardedValue = map['intervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntervalUnit.fromValue(guardedValue as String)); })(),
      startFrom: (() { final guardedValue = map['startFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOn: (() { final guardedValue = map['startOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

