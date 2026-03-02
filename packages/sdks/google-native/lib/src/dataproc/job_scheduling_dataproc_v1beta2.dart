// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job scheduling options.
class JobSchedulingDataprocV1beta2 {
  /// Optional. Maximum number of times per hour a driver may be restarted as a result of driver terminating with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.
  final pulumi.Input<int>? maxFailuresPerHour;
  /// Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.
  final pulumi.Input<int>? maxFailuresTotal;

  /// Creates a new [JobSchedulingDataprocV1beta2].
  /// [maxFailuresPerHour] Optional. Maximum number of times per hour a driver may be restarted as a result of driver terminating with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.
  /// [maxFailuresTotal] Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.
  JobSchedulingDataprocV1beta2({
    this.maxFailuresPerHour,
    this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailuresPerHour': ?maxFailuresPerHour,
      'maxFailuresTotal': ?maxFailuresTotal,
    };
  }

  factory JobSchedulingDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobSchedulingDataprocV1beta2(
      maxFailuresPerHour: map['maxFailuresPerHour'] == null ? null : (map['maxFailuresPerHour'] as int).input(),
      maxFailuresTotal: map['maxFailuresTotal'] == null ? null : (map['maxFailuresTotal'] as int).input(),
    );
  }
}

