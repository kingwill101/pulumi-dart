// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_session_args_doc}
/// Arguments for getSession.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_session_args_doc}
class GetSessionArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionArgs].
  /// [databaseId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionArgs({
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionId,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionId = pulumi.Input.asInput<String>(sessionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'instanceId': instanceId,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory GetSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionArgs(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionId: pulumi.Output.create<String>(map['sessionId'] as String),
    );
  }
}

