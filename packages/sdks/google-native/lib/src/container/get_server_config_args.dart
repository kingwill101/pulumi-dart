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
    required this.location,
    this.project,
    this.projectId,
    this.zone,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
