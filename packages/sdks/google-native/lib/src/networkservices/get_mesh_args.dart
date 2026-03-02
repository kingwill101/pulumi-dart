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
    required this.location,
    required this.meshId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'meshId': meshId,
      'project': ?project,
    };
  }

  factory GetMeshArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs(
      location: (map['location'] as String).input(),
      meshId: (map['meshId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

