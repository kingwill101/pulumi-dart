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
  GetSinkArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> sinkId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      sinkId = pulumi.Input.asInput<String>(sinkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sinkId': sinkId,
    };
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sinkId: pulumi.Output.create<String>(map['sinkId'] as String),
    );
  }
}

