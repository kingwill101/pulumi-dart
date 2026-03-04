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

  factory GetServerConfigContainerV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServerConfigContainerV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
