// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector.dart';

/// {@template pulumi_contactcenterinsights_v1_analysis_args_doc}
/// The set of arguments for Analysis.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_analysis_args_doc}
class AnalysisArgs {
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelector>?
  annotatorSelector;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [AnalysisArgs].
  /// [annotatorSelector] To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  /// [conversationId] Required.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}
  /// [project] Optional.
  AnalysisArgs({
    this.annotatorSelector,
    required this.conversationId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatorSelector':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContactcenterinsightsV1AnnotatorSelector,
            Map<String, dynamic>
          >(annotatorSelector, (value) => value.toMap()),
      'conversationId': conversationId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AnalysisArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisArgs(
      annotatorSelector: (() {
        final guardedValue = map['annotatorSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      conversationId: pulumi.Input.fromValue(map['conversationId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
