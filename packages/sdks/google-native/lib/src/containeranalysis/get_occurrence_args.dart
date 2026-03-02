// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1_get_occurrence_args_doc}
/// Arguments for getOccurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_get_occurrence_args_doc}
class GetOccurrenceArgs {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceArgs].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceArgs({
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occurrenceId': occurrenceId,
      'project': ?project,
    };
  }

  factory GetOccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceArgs(
      occurrenceId: (map['occurrenceId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

