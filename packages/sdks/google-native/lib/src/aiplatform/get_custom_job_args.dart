// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_custom_job_args_doc}
/// Arguments for getCustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_custom_job_args_doc}
class GetCustomJobArgs {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomJobArgs].
  /// [customJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomJobArgs({
    required this.customJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJobId': customJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomJobArgs(
      customJobId: (map['customJobId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

