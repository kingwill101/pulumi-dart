// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_trigger_schedule.dart';

class PreventionJobTriggerTrigger {
  /// For use with hybrid jobs. Jobs must be manually created and finished.
  final pulumi.Input<Map<String, dynamic>>? manual;
  /// Schedule for triggered jobs
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerTriggerSchedule>? schedule;

  /// Creates a new [PreventionJobTriggerTrigger].
  /// [manual] For use with hybrid jobs. Jobs must be manually created and finished.
  /// [schedule] Schedule for triggered jobs
  PreventionJobTriggerTrigger({
    this.manual,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual,
      'schedule': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerTriggerSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerTrigger.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerTrigger(
      manual: map['manual'] == null ? null : ((map['manual']! as Map).cast<String, dynamic>()).input(),
      schedule: map['schedule'] == null ? null : (PreventionJobTriggerTriggerSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

