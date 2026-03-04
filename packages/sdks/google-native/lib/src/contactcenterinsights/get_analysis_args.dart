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
    required this.analysisId,
    required this.conversationId,
    required this.location,
    this.project,
  });

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
      analysisId: pulumi.Input.fromValue(map['analysisId'] as String),
      conversationId: pulumi.Input.fromValue(map['conversationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
