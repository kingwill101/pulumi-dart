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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scheduleId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      scheduleId = pulumi.Input.asInput<String>(scheduleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scheduleId': scheduleId,
    };
  }

  factory GetScheduleAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetScheduleAiplatformV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scheduleId: pulumi.Output.create<String>(map['scheduleId'] as String),
    );
  }
}

