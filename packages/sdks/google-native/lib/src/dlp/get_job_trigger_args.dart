// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_job_trigger_args_doc}
/// Arguments for getJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_job_trigger_args_doc}
class GetJobTriggerArgs {
  final pulumi.Input<String> jobTriggerId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobTriggerArgs].
  /// [jobTriggerId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobTriggerArgs({
    required this.jobTriggerId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTriggerId': jobTriggerId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTriggerArgs(
      jobTriggerId: (map['jobTriggerId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

