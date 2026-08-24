// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowSchedule {
  final pulumi.Input<String> cron;

  /// Creates a new [WorkflowSchedule].
  /// [cron] Required.
  const WorkflowSchedule({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cron': cron,
    };
  }

  factory WorkflowSchedule.fromMap(Map<String, dynamic> map) {
    return WorkflowSchedule(
      cron: pulumi.Input.fromValue(map['cron'] as String),
    );
  }
}
