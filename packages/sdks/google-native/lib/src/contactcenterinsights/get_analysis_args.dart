// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_analysis_args_doc}
/// Arguments for getAnalysis.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_analysis_args_doc}
class GetAnalysisArgs {
  final pulumi.Input<String> analysisId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnalysisArgs].
  /// [analysisId] Required.
  /// [conversationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnalysisArgs({
    required pulumi.Output<String> analysisId,
    required pulumi.Output<String> conversationId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      analysisId = pulumi.Input.asInput<String>(analysisId),
      conversationId = pulumi.Input.asInput<String>(conversationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisId': analysisId,
      'conversationId': conversationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalysisArgs(
      analysisId: pulumi.Output.create<String>(map['analysisId'] as String),
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

