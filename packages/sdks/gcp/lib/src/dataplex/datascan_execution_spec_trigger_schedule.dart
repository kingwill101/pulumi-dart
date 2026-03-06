// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanExecutionSpecTriggerSchedule {
  /// Cron schedule for running scans periodically. This field is required for Schedule scans.
  final pulumi.Input<String> cron;

  /// Creates a new [DatascanExecutionSpecTriggerSchedule].
  /// [cron] Cron schedule for running scans periodically. This field is required for Schedule scans.
  const DatascanExecutionSpecTriggerSchedule({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cron': cron,
    };
  }

  factory DatascanExecutionSpecTriggerSchedule.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpecTriggerSchedule(
      cron: pulumi.Input.fromValue(map['cron'] as String),
    );
  }
}

