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
    required this.databaseId,
    required this.instanceId,
    this.project,
    required this.sessionId,
  });

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
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
    );
  }
}
