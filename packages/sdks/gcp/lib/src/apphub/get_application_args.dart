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
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> project,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'project': project,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

