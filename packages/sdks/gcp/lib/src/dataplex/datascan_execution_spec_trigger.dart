// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_execution_spec_trigger_one_time.dart';
import 'datascan_execution_spec_trigger_schedule.dart';

class DatascanExecutionSpecTrigger {
  /// The scan runs once via dataScans.run API.
  final pulumi.Input<Map<String, dynamic>?>? onDemand;
  /// The scan runs once upon DataScan creation.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpecTriggerOneTime?>? oneTime;
  /// The scan is scheduled to run periodically.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpecTriggerSchedule?>? schedule;

  /// Creates a new [DatascanExecutionSpecTrigger].
  /// [onDemand] The scan runs once via dataScans.run API.
  /// [oneTime] The scan runs once upon DataScan creation.
  /// [schedule] The scan is scheduled to run periodically.
  const DatascanExecutionSpecTrigger({
    this.onDemand,
    this.oneTime,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemand': ?onDemand,
      'oneTime': ?pulumi.Input.mapOptionalInputValue<DatascanExecutionSpecTriggerOneTime, Map<String, dynamic>>(oneTime, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<DatascanExecutionSpecTriggerSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory DatascanExecutionSpecTrigger.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpecTrigger(
      onDemand: (() { final guardedValue = map['onDemand']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      oneTime: (() { final guardedValue = map['oneTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanExecutionSpecTriggerOneTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanExecutionSpecTriggerSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
