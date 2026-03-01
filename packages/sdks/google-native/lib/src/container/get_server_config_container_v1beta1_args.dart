// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1beta1_get_server_config_container_v1beta1_args_doc}
/// Arguments for getServerConfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_server_config_container_v1beta1_args_doc}
class GetServerConfigContainerV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  /// Creates a new [GetServerConfigContainerV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [zone] Required.
  GetServerConfigContainerV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> projectId,
    required pulumi.Output<String> zone,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asInput<String>(projectId),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'projectId': projectId,
      'zone': zone,
    };
  }

  factory GetServerConfigContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetServerConfigContainerV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

