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
  GetLoggingServerArgs({
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
      location: (map['location'] as String).input(),
      loggingServerId: (map['loggingServerId'] as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

