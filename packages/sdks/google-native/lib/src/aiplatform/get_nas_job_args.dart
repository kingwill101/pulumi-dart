// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_nas_job_args_doc}
/// Arguments for getNasJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_nas_job_args_doc}
class GetNasJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nasJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNasJobArgs].
  /// [location] Required.
  /// [nasJobId] Required.
  /// [project] Optional.
  GetNasJobArgs({
    required this.location,
    required this.nasJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nasJobId': nasJobId,
      'project': ?project,
    };
  }

  factory GetNasJobArgs.fromMap(Map<String, dynamic> map) {
    return GetNasJobArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      nasJobId: pulumi.Input.fromValue(map['nasJobId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

