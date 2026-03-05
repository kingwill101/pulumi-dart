// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_dlp_job_args_doc}
/// Arguments for getDlpJob.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_dlp_job_args_doc}
class GetDlpJobArgs {
  final pulumi.Input<String> dlpJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDlpJobArgs].
  /// [dlpJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDlpJobArgs({
    required this.dlpJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dlpJobId': dlpJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDlpJobArgs.fromMap(Map<String, dynamic> map) {
    return GetDlpJobArgs(
      dlpJobId: pulumi.Input.fromValue(map['dlpJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

