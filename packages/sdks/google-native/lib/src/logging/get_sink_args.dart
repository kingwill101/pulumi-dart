// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_sink_args_doc}
/// Arguments for getSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_sink_args_doc}
class GetSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sinkId;

  /// Creates a new [GetSinkArgs].
  /// [project] Optional.
  /// [sinkId] Required.
  const GetSinkArgs({
    this.project,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sinkId': sinkId,
    };
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sinkId: pulumi.Input.fromValue(map['sinkId'] as String),
    );
  }
}

