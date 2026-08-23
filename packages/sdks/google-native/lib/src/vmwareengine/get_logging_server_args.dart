// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_logging_server_args_doc}
/// Arguments for getLoggingServer.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_logging_server_args_doc}
class GetLoggingServerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> loggingServerId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLoggingServerArgs].
  /// [location] Required.
  /// [loggingServerId] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  const GetLoggingServerArgs({
    required this.location,
    required this.loggingServerId,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'loggingServerId': loggingServerId,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetLoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingServerId: pulumi.Input.fromValue(map['loggingServerId'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
