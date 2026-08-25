// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_mesh_mesh_args_doc}
/// The set of arguments for Mesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_mesh_mesh_args_doc}
class MeshArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to
  /// be redirected to this port regardless of its actual ip:port destination. If unset, a port
  /// '15001' is used as the interception port. This will is applicable only for sidecar proxy
  /// deployments.
  final pulumi.Input<int?>? interceptionPort;
  /// Set of label tags associated with the Mesh resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final pulumi.Input<String?>? location;
  /// Short name of the Mesh resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [MeshArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// [labels] Set of label tags associated with the Mesh resource.
  /// [location] Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  /// [name] Short name of the Mesh resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  const MeshArgs({
    this.deletionPolicy,
    this.description,
    this.interceptionPort,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'interceptionPort': ?interceptionPort,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interceptionPort: (() { final guardedValue = map['interceptionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
