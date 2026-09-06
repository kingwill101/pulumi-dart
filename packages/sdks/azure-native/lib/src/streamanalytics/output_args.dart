// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_args_doc}
/// The set of arguments for Output.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_args_doc}
class OutputArgs {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? datasource;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String?>? name;
  /// The name of the output.
  final pulumi.Input<String?>? outputName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? serialization;
  /// The size window to constrain a Stream Analytics output to.
  final pulumi.Input<int?>? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final pulumi.Input<String?>? timeWindow;

  /// Creates a new [OutputArgs].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [outputName] The name of the output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  const OutputArgs({
    this.datasource,
    required this.jobName,
    this.name,
    this.outputName,
    required this.resourceGroupName,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource': ?datasource,
      'jobName': jobName,
      'name': ?name,
      'outputName': ?outputName,
      'resourceGroupName': resourceGroupName,
      'serialization': ?serialization,
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
    };
  }

  factory OutputArgs.fromMap(Map<String, dynamic> map) {
    return OutputArgs(
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputName: (() { final guardedValue = map['outputName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialization: (() { final guardedValue = map['serialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sizeWindow: (() { final guardedValue = map['sizeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
