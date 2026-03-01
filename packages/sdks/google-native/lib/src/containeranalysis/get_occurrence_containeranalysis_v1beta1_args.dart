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
    required pulumi.Output<String> occurrenceId,
    pulumi.Output<String>? project,
  }) :
      occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'occurrenceId': occurrenceId,
      'project': ?project,
    };
  }

  factory GetOccurrenceContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1beta1Args(
      occurrenceId: pulumi.Output.create<String>(map['occurrenceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

