// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1beta1_get_occurrence_containeranalysis_v1beta1_args_doc}
/// Arguments for getOccurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_get_occurrence_containeranalysis_v1beta1_args_doc}
class GetOccurrenceContaineranalysisV1beta1Args {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceContaineranalysisV1beta1Args].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceContaineranalysisV1beta1Args({
    required this.occurrenceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occurrenceId': occurrenceId,
      'project': ?project,
    };
  }

  factory GetOccurrenceContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1beta1Args(
      occurrenceId: pulumi.Input.fromValue(map['occurrenceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

