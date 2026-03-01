// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_mesh_args_doc}
/// Arguments for getMesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_mesh_args_doc}
class GetMeshArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshArgs].
  /// [location] Required.
  /// [meshId] Required.
  /// [project] Optional.
  GetMeshArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> meshId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      meshId = pulumi.Input.asInput<String>(meshId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'meshId': meshId,
      'project': ?project,
    };
  }

  factory GetMeshArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      meshId: pulumi.Output.create<String>(map['meshId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

