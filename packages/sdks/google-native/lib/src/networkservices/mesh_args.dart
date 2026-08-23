// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_mesh_args_doc}
/// The set of arguments for Mesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_mesh_args_doc}
class MeshArgs {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  final pulumi.Input<int>? interceptionPort;
  /// Optional. Set of label tags associated with the Mesh resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. Short name of the Mesh resource to be created.
  final pulumi.Input<String> meshId;
  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [MeshArgs].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  /// [labels] Optional. Set of label tags associated with the Mesh resource.
  /// [location] Optional.
  /// [meshId] Required. Short name of the Mesh resource to be created.
  /// [name] Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  /// [project] Optional.
  const MeshArgs({
    this.description,
    this.interceptionPort,
    this.labels,
    this.location,
    required this.meshId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'interceptionPort': ?interceptionPort,
      'labels': ?labels,
      'location': ?location,
      'meshId': meshId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interceptionPort: (() { final guardedValue = map['interceptionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meshId: pulumi.Input.fromValue(map['meshId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
