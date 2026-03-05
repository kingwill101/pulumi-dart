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
    required this.lineageEventId,
    required this.location,
    required this.processId,
    this.project,
    required this.runId,
  });

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
      lineageEventId: pulumi.Input.fromValue(map['lineageEventId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      processId: pulumi.Input.fromValue(map['processId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runId: pulumi.Input.fromValue(map['runId'] as String),
    );
  }
}

