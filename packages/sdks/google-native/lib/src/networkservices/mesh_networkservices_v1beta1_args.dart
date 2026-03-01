// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_mesh_networkservices_v1beta1_args_doc}
/// The set of arguments for Mesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_mesh_networkservices_v1beta1_args_doc}
class MeshNetworkservicesV1beta1Args {
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

  /// Creates a new [MeshNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  /// [labels] Optional. Set of label tags associated with the Mesh resource.
  /// [location] Optional.
  /// [meshId] Required. Short name of the Mesh resource to be created.
  /// [name] Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  /// [project] Optional.
  MeshNetworkservicesV1beta1Args({
    pulumi.Output<String>? description,
    pulumi.Output<int>? interceptionPort,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> meshId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      interceptionPort = pulumi.Input.asOptionalInput<int>(interceptionPort),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      meshId = pulumi.Input.asInput<String>(meshId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

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

  factory MeshNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MeshNetworkservicesV1beta1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      interceptionPort: map['interceptionPort'] == null ? null : pulumi.Output.create<int>(map['interceptionPort'] as int),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      meshId: pulumi.Output.create<String>(map['meshId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

