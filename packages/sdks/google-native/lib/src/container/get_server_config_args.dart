// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1_get_server_config_args_doc}
/// Arguments for getServerConfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_server_config_args_doc}
class GetServerConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? zone;

  /// Creates a new [GetServerConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  /// [zone] Optional.
  GetServerConfigArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? zone,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'projectId': ?projectId,
      'zone': ?zone,
    };
  }

  factory GetServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServerConfigArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

