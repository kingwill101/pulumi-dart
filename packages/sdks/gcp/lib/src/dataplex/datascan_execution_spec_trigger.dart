// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_execution_spec_trigger_one_time.dart';
import 'datascan_execution_spec_trigger_schedule.dart';

class DatascanExecutionSpecTrigger {
  /// The scan runs once via dataScans.run API.
  final pulumi.Input<Map<String, dynamic>>? onDemand;
  /// The scan runs once upon DataScan creation.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpecTriggerOneTime>? oneTime;
  /// The scan is scheduled to run periodically.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpecTriggerSchedule>? schedule;

  /// Creates a new [DatascanExecutionSpecTrigger].
  /// [onDemand] The scan runs once via dataScans.run API.
  /// [oneTime] The scan runs once upon DataScan creation.
  /// [schedule] The scan is scheduled to run periodically.
  DatascanExecutionSpecTrigger({
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
      onDemand: map['onDemand'] == null ? null : ((map['onDemand']! as Map).cast<String, dynamic>()).input(),
      oneTime: map['oneTime'] == null ? null : (DatascanExecutionSpecTriggerOneTime.fromMap((map['oneTime']! as Map).cast<String, dynamic>())).input(),
      schedule: map['schedule'] == null ? null : (DatascanExecutionSpecTriggerSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

