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
    required pulumi.Output<String> location,
    required pulumi.Output<String> loggingServerId,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      loggingServerId = pulumi.Input.asInput<String>(loggingServerId),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      loggingServerId: pulumi.Output.create<String>(map['loggingServerId'] as String),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

