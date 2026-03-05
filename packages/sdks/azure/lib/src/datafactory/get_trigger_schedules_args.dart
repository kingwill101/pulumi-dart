// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_schedules_get_trigger_schedules_args_doc}
/// Arguments for getTriggerSchedules.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_schedules_get_trigger_schedules_args_doc}
class GetTriggerSchedulesArgs {
  /// The ID of the Azure Data Factory to fetch trigger schedules from.
  final pulumi.Input<String> dataFactoryId;

  /// Creates a new [GetTriggerSchedulesArgs].
  /// [dataFactoryId] The ID of the Azure Data Factory to fetch trigger schedules from.
  GetTriggerSchedulesArgs({
    required this.dataFactoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
    };
  }

  factory GetTriggerSchedulesArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerSchedulesArgs(
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
    );
  }
}

