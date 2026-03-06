// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_config.dart';

/// {@template pulumi_cloudtrace_v2beta1_trace_sink_args_doc}
/// The set of arguments for TraceSink.
/// {@endtemplate}
/// {@macro pulumi_cloudtrace_v2beta1_trace_sink_args_doc}
class TraceSinkArgs {
  /// The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  final pulumi.Input<String>? name;
  /// The export destination.
  final pulumi.Input<OutputConfig> outputConfig;
  final pulumi.Input<String>? project;

  /// Creates a new [TraceSinkArgs].
  /// [name] The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  /// [outputConfig] The export destination.
  /// [project] Optional.
  const TraceSinkArgs({
    this.name,
    required this.outputConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'outputConfig': pulumi.Input.mapInputValue<OutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory TraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return TraceSinkArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputConfig: pulumi.Input.fromValue(OutputConfig.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

