// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_session_args_doc}
/// The set of arguments for Session.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_session_args_doc}
class SessionArgs {
  /// The database role which created this session.
  final pulumi.Input<String>? creatorRole;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;
  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  /// Creates a new [SessionArgs].
  /// [creatorRole] The database role which created this session.
  /// [databaseId] Required.
  /// [instanceId] Required.
  /// [labels] The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  /// [project] Optional.
  const SessionArgs({
    this.creatorRole,
    required this.databaseId,
    required this.instanceId,
    this.labels,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRole': ?creatorRole,
      'databaseId': databaseId,
      'instanceId': instanceId,
      'labels': ?labels,
      'project': ?project,
    };
  }

  factory SessionArgs.fromMap(Map<String, dynamic> map) {
    return SessionArgs(
      creatorRole: (() { final guardedValue = map['creatorRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

