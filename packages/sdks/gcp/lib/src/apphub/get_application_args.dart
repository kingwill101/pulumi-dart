// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_apphub_get_application_get_application_args_doc}
class GetApplicationArgs {
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> project;

  /// Creates a new [GetApplicationArgs].
  /// [applicationId] Required.
  /// [location] Required.
  /// [project] Required.
  GetApplicationArgs({
    required this.applicationId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'project': project,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: (map['applicationId'] as String).input(),
      location: (map['location'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

