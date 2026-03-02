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
    required this.location,
    this.project,
    required this.projectId,
    required this.zone,
  });

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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      projectId: (map['projectId'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

