// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateJobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10.
  final pulumi.Input<int>? maxFailuresPerHour;
  /// Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240
  final pulumi.Input<int>? maxFailuresTotal;

  /// Creates a new [WorkflowTemplateJobScheduling].
  /// [maxFailuresPerHour] Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10.
  /// [maxFailuresTotal] Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240
  const WorkflowTemplateJobScheduling({
    this.maxFailuresPerHour,
    this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailuresPerHour': ?maxFailuresPerHour,
      'maxFailuresTotal': ?maxFailuresTotal,
    };
  }

  factory WorkflowTemplateJobScheduling.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobScheduling(
      maxFailuresPerHour: (() { final guardedValue = map['maxFailuresPerHour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxFailuresTotal: (() { final guardedValue = map['maxFailuresTotal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

