// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_schedule_aiplatform_v1beta1_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_schedule_aiplatform_v1beta1_args_doc}
class GetScheduleAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scheduleId;

  /// Creates a new [GetScheduleAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [scheduleId] Required.
  GetScheduleAiplatformV1beta1Args({
    required this.location,
    this.project,
    required this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scheduleId': scheduleId,
    };
  }

  factory GetScheduleAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetScheduleAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scheduleId: (map['scheduleId'] as String).input(),
    );
  }
}

