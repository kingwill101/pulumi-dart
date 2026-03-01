// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_private_connection_args_doc}
/// Arguments for getPrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_private_connection_args_doc}
class GetPrivateConnectionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateConnectionArgs].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  GetPrivateConnectionArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> privateConnectionId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
    };
  }

  factory GetPrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      privateConnectionId: pulumi.Output.create<String>(map['privateConnectionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

