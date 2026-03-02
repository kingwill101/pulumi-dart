// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_schedule_get_trigger_schedule_args_doc}
/// Arguments for getTriggerSchedule.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_schedule_get_trigger_schedule_args_doc}
class GetTriggerScheduleArgs {
  /// The ID of the Azure Data Factory to fetch trigger schedule from.
  final pulumi.Input<String> dataFactoryId;
  /// The name of the trigger schedule.
  final pulumi.Input<String> name;

  /// Creates a new [GetTriggerScheduleArgs].
  /// [dataFactoryId] The ID of the Azure Data Factory to fetch trigger schedule from.
  /// [name] The name of the trigger schedule.
  GetTriggerScheduleArgs({
    required this.dataFactoryId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'name': name,
    };
  }

  factory GetTriggerScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleArgs(
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

