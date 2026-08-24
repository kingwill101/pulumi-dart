// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkflowSchedule {
  final pulumi.Input<String> cron;
  final pulumi.Input<String> nextInstance;

  /// Creates a new [GetWorkflowSchedule].
  /// [cron] Required.
  /// [nextInstance] Required.
  const GetWorkflowSchedule({
    required this.cron,
    required this.nextInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cron': cron,
      'nextInstance': nextInstance,
    };
  }

  factory GetWorkflowSchedule.fromMap(Map<String, dynamic> map) {
    return GetWorkflowSchedule(
      cron: pulumi.Input.fromValue(map['cron'] as String),
      nextInstance: pulumi.Input.fromValue(map['nextInstance'] as String),
    );
  }
}
