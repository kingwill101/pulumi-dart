// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtrace_v2beta1_get_trace_sink_args_doc}
/// Arguments for getTraceSink.
/// {@endtemplate}
/// {@macro pulumi_cloudtrace_v2beta1_get_trace_sink_args_doc}
class GetTraceSinkArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> traceSinkId;

  /// Creates a new [GetTraceSinkArgs].
  /// [project] Optional.
  /// [traceSinkId] Required.
  const GetTraceSinkArgs({
    this.project,
    required this.traceSinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'traceSinkId': traceSinkId,
    };
  }

  factory GetTraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetTraceSinkArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      traceSinkId: pulumi.Input.fromValue(map['traceSinkId'] as String),
    );
  }
}

