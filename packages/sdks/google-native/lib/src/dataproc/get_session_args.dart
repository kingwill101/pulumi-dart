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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionId = pulumi.Input.asInput<String>(sessionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sessionId': sessionId,
    };
  }

  factory GetSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionId: pulumi.Output.create<String>(map['sessionId'] as String),
    );
  }
}

