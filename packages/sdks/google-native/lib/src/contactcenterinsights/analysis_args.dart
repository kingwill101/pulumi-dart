// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector.dart';

/// {@template pulumi_contactcenterinsights_v1_analysis_args_doc}
/// The set of arguments for Analysis.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_analysis_args_doc}
class AnalysisArgs {
  /// To select the annotators to run and the phrase matchers to use (if any). If not specified, all annotators will be run.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelector>? annotatorSelector;
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
    pulumi.Output<GoogleCloudContactcenterinsightsV1AnnotatorSelector>? annotatorSelector,
    required pulumi.Output<String> conversationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      annotatorSelector = pulumi.Input.asOptionalInput<GoogleCloudContactcenterinsightsV1AnnotatorSelector>(annotatorSelector),
      conversationId = pulumi.Input.asInput<String>(conversationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatorSelector': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1AnnotatorSelector, Map<String, dynamic>>(annotatorSelector, (value) => value.toMap()),
      'conversationId': conversationId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AnalysisArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisArgs(
      annotatorSelector: map['annotatorSelector'] == null ? null : pulumi.Output.create<GoogleCloudContactcenterinsightsV1AnnotatorSelector>(GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromMap((map['annotatorSelector'] as Map).cast<String, dynamic>())),
      conversationId: pulumi.Output.create<String>(map['conversationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

