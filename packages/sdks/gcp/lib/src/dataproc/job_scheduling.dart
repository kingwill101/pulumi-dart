// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final pulumi.Input<int> maxFailuresPerHour;
  /// Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final pulumi.Input<int> maxFailuresTotal;

  /// Creates a new [JobScheduling].
  /// [maxFailuresPerHour] Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  /// [maxFailuresTotal] Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  const JobScheduling({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailuresPerHour': maxFailuresPerHour,
      'maxFailuresTotal': maxFailuresTotal,
    };
  }

  factory JobScheduling.fromMap(Map<String, dynamic> map) {
    return JobScheduling(
      maxFailuresPerHour: pulumi.Input.fromValue((map['maxFailuresPerHour'] as num).toInt()),
      maxFailuresTotal: pulumi.Input.fromValue((map['maxFailuresTotal'] as num).toInt()),
    );
  }
}
