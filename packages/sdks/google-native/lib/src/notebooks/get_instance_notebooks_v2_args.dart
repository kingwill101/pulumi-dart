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
  const GetInstanceNotebooksV2Args({
    required this.instanceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInstanceNotebooksV2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceNotebooksV2Args(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
