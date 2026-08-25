// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_artifacts_config_visualization_options_visualization_example.dart';

class AnalystAgentPersonaArtifactsConfigVisualizationOptions {
  /// Examples for visualizations.
  final pulumi.Input<List<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>?>? visualizationExamples;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptions].
  /// [visualizationExamples] Examples for visualizations.
  const AnalystAgentPersonaArtifactsConfigVisualizationOptions({
    this.visualizationExamples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visualizationExamples': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>, List<Map<String, dynamic>>>(visualizationExamples, (value) => pulumi.Input.encodeList<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptions.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptions(
      visualizationExamples: (() { final guardedValue = map['visualizationExamples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample>(guardedValue, (value) => AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
