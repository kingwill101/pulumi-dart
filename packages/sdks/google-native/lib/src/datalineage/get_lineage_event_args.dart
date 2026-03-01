// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalineage_v1_get_lineage_event_args_doc}
/// Arguments for getLineageEvent.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_get_lineage_event_args_doc}
class GetLineageEventArgs {
  final pulumi.Input<String> lineageEventId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;

  /// Creates a new [GetLineageEventArgs].
  /// [lineageEventId] Required.
  /// [location] Required.
  /// [processId] Required.
  /// [project] Optional.
  /// [runId] Required.
  GetLineageEventArgs({
    required pulumi.Output<String> lineageEventId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> processId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> runId,
  }) :
      lineageEventId = pulumi.Input.asInput<String>(lineageEventId),
      location = pulumi.Input.asInput<String>(location),
      processId = pulumi.Input.asInput<String>(processId),
      project = pulumi.Input.asOptionalInput<String>(project),
      runId = pulumi.Input.asInput<String>(runId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineageEventId': lineageEventId,
      'location': location,
      'processId': processId,
      'project': ?project,
      'runId': runId,
    };
  }

  factory GetLineageEventArgs.fromMap(Map<String, dynamic> map) {
    return GetLineageEventArgs(
      lineageEventId: pulumi.Output.create<String>(map['lineageEventId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      processId: pulumi.Output.create<String>(map['processId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runId: pulumi.Output.create<String>(map['runId'] as String),
    );
  }
}

