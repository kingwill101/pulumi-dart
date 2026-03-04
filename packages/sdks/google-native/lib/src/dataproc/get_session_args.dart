// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_session_args_doc}
/// Arguments for getSession.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_session_args_doc}
class GetSessionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionArgs({
    required this.location,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory GetSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
    );
  }
}
