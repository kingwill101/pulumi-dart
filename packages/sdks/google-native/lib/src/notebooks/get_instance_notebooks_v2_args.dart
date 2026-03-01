// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v2_get_instance_notebooks_v2_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v2_get_instance_notebooks_v2_args_doc}
class GetInstanceNotebooksV2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceNotebooksV2Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInstanceNotebooksV2Args({
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInstanceNotebooksV2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceNotebooksV2Args(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

