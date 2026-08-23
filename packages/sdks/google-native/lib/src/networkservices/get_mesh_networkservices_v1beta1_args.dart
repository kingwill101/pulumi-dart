// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_mesh_networkservices_v1beta1_args_doc}
/// Arguments for getMesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_mesh_networkservices_v1beta1_args_doc}
class GetMeshNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [meshId] Required.
  /// [project] Optional.
  const GetMeshNetworkservicesV1beta1Args({
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

  factory GetMeshNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMeshNetworkservicesV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      meshId: pulumi.Input.fromValue(map['meshId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
