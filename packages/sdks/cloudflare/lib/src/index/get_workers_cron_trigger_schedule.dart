// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersCronTriggerSchedule {
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> cron;
  final pulumi.Input<String> modifiedOn;

  /// Creates a new [GetWorkersCronTriggerSchedule].
  /// [createdOn] Required.
  /// [cron] Required.
  /// [modifiedOn] Required.
  const GetWorkersCronTriggerSchedule({
    required this.createdOn,
    required this.cron,
    required this.modifiedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'cron': cron,
      'modifiedOn': modifiedOn,
    };
  }

  factory GetWorkersCronTriggerSchedule.fromMap(Map<String, dynamic> map) {
    return GetWorkersCronTriggerSchedule(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      cron: pulumi.Input.fromValue(map['cron'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
    );
  }
}
