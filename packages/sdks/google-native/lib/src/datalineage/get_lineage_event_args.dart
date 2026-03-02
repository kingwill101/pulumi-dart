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
      lineageEventId: (map['lineageEventId'] as String).input(),
      location: (map['location'] as String).input(),
      processId: (map['processId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runId: (map['runId'] as String).input(),
    );
  }
}

