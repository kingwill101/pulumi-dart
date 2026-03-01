// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_trigger_args_doc}
class GetTriggerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [triggerId] Required.
  GetTriggerArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> projectId,
    required pulumi.Output<String> triggerId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asInput<String>(projectId),
      triggerId = pulumi.Input.asInput<String>(triggerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'projectId': projectId,
      'triggerId': triggerId,
    };
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      triggerId: pulumi.Output.create<String>(map['triggerId'] as String),
    );
  }
}

